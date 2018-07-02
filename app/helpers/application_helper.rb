module ApplicationHelper
	def new_resource_path(model, ns)
		unless ns.nil?
			send("new_#{ns}_#{model}_path")
		else
			send("new_#{model}_path")
		end
	end
end
