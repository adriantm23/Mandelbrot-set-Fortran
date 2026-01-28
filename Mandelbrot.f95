program Mandelbrot

        implicit none
        integer,parameter::dp=selected_real_kind(15,307)

        real(kind=dp)::a,b,x,y,x2,y2,n
        integer::i,j,k
        integer,parameter::max_iter=150
        integer,parameter::res=1500


        open(unit=17,file="Mandelbrot_set.dat",action="write",status="replace")
       
        n=4.0_dp/res
        
        do j=1,res

                a=-2.0_dp+(j-1)*n

                do k=1,res

                        b=-2.0_dp+(k-1)*n

                        x=0.0_dp
                        y=0.0_dp
                        x2=0.0_dp
                        y2=0.0_dp

                        do i=1,max_iter
                               
                                y=2.0_dp * x * y + b
                                x=x2-y2 + a
                                
                                x2=x*x
                                y2=y*y

                                if ((x2+y2)>4.0_dp) then
                                        exit
                                end if


                        end do
                        
                    write(unit=17,fmt=*) a,b,i

                end do

                write(unit=17,fmt=*)
        end do 

        close(unit=17)
        
        print*, "Calcualtion complete. The Mandelbrot_set.dat has been created."

        end program Mandelbrot
