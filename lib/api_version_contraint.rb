class ApiVersionConstraint

	def initialize(options)
		@version = options[:version]
		@default = options[:default]

	end
#Aqui se hace una validación si @default es verdadero o la sentencia req.headers especifica la versión
	def matches?(req)
		@default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
	end
	
 end