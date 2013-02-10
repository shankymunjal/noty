module Noty
	module ViewHelpers
		def notification(_arg = nil)
			_arg ||= flash.to_hash
			case _arg.class.name
			when 'String'
				javascript_tag do
					"noty({'text':'#{_arg}','layout':'bottom','type':'alert','animateOpen':{'height':'toggle'},'animateClose':{'height':'toggle'},'speed':500,'timeout':5000,'closeButton':false,'closeOnSelfClick':true,'closeOnSelfOver':false});"
				end

			when 'Hash'
				javascript_tag do
					_arg.collect do |_key, _value|
						_value = ( (_value.class.name == 'Array') ? _value.compact.uniq : [_value])

						case _key
						when :alert
							_value.collect do |v|
								"noty({'text':'#{v}','layout':'bottom','type':'alert','animateOpen':{'height':'toggle'},'animateClose':{'height':'toggle'},'speed':500,'timeout':0,'closeButton':false,'closeOnSelfClick':true,'closeOnSelfOver':false});"
							end

						when :notice
							_value.collect do |v|
								_type = (( v =~ /success/i) ? 'success' : 'information')
								"noty({'text':'#{v}','layout':'bottom','type':'#{_type}','animateOpen':{'height':'toggle'},'animateClose':{'height':'toggle'},'speed':500,'timeout':0,'closeButton':false,'closeOnSelfClick':true,'closeOnSelfOver':false});"
							end

						when :error
							_value.collect do |v|
								"noty({'text':'#{v}','layout':'bottom','type':'error','animateOpen':{'height':'toggle'},'animateClose':{'height':'toggle'},'speed':100,'timeout':0,'closeButton':false,'closeOnSelfClick':true,'closeOnSelfOver':false});"
							end
						end
					end.join(' ')
				end
			end
		end
	end
end