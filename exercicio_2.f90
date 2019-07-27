!program principal

!      implicit none

!      real :: x_float

!      read(*,*) x_float

!      write( *, * ) x_float, sqrt( x_float )

!      ! Função interna

!      call Negative( x_float )

!      write( *, * ) x_float

!      ! Subrotina do usuário

!      contains

!        subroutine Negative( num_1_float )

!          implicit none

!          real :: num_1_float
!          
!          num_1_float = -num_1_float
!          
!          return
!          
!        end subroutine   

!end program 

!program principal

!      implicit none

!      real :: x_float

!      read(*,*) x_float

!      write(*,*) x_float , SQRT( x_float )

!      ! Função interna

!      write(*,*) Negative( x_float )
!      write(*,*) x_float

!      ! Subrotina do usuário

!      contains

!        real function Negative( num_1_float )
!     
!          implicit none

!          real :: num_1_float

!          Negative = - num_1_float

!        end function

!end program

program exercicio_3

      implicit none
      
      real :: num_1_float, num_2_float, num_3_float
      
      read(*,*) num_1_float
      read(*,*) num_2_float
      
      call soma_sub( num_1_float, num_2_float, num_3_float )
      
      write(*,*) num_3_float
      
      write(*,*) soma_func( num_1_float, num_2_float )
      
      contains
        
        subroutine soma_sub( x_float, y_float, w_float )
          
          real, intent( out ) :: x_float, y_float, w_float
          
          w_float = x_float + y_float
          
          return 
        
        end subroutine

        real function soma_func( x_float, y_float )
        
          implicit none
        
          real, intent( out ) :: x_float, y_float
          
           soma_func = x_float + y_float
          
        end function

end program

