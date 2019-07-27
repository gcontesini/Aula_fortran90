program matrix_example

	    integer :: M_int, N_int, i_int, j_int

	    integer	:: A_mtx( 2, 3 ), square_A_mtx( 2, 2 )
      
	    real		:: X_mtx( 1:5, 1:1 ), square_x_mtx( 1:5, 1:1 )

	    write(*,*) "type matrix A_mtx's elements:"
	    read(*,*) A_mtx

	    write(*,*) "type matrix A_mtx's elements:"
	    read(*,*) X_mtx

      write(*,*) "Matriz X:"

	    M_int = size( X_mtx, 1 )
	    N_int = size( X_mtx, 2 ) 

      write(*,*) "# Linhas: ", M_int
      write(*,*) "# Colunas:", N_int

      write(*,*) "Matriz A:"
	    M_int = size( A_mtx, 1 )
	    N_int = size( A_mtx, 2 ) 

      write(*,*) "# Linhas: ", M_int
      write(*,*) "# Colunas:", N_int

      write(*,*) "Matrix:"

      square_A_mtx = matmul( A_mtx, transpose(A_mtx) ) 
      
      do i_int=1 , size(square_A_mtx,1)
      
        write( *, * ) square_A_mtx(i_int,:size(square_A_mtx,2))

      end do 
      
      write(*,*) "Average of X_mtx's elements :"
      
      square_x_mtx = X_mtx**2
      
      write(*,*) sum(X_mtx,1)/(size( X_mtx, 1 ) * size( X_mtx, 2 )) 
      
end program 	
