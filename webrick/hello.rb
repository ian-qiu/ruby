class HelloServlet < HTTPServlet::AbstractServlet
	def hello(resp)
		resp.body "Hello world!"
	end
end
