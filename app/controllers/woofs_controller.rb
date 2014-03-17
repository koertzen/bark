class	WoofsController	<	ApplicaHonController	
		def	create	
				@woof	=	Woof.new(woof_params)	
				@woof.user_id	=	current_user.id	
				
				if	@woof.save	
								redirect_to	current_user		
				else	
								ﬂash[:error]	=	"Problem!"	
								redirect_to	current_user	
				end	
		end	
	
		private	
				def	set_woof	
						@woof	=	Woof.ﬁnd(params[:id])	
				end	
	
				def	woof_params	
						params.require(:woof).permit(:content,	:user_id)	
				end	
end	
