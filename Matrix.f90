program matrix

implicit none

real , dimension(100)   :: r_vec
real                    :: t_mtx(5,2)

real , dimension(-10:10,-10:10) :: s_mtx

integer, dimension(3,3) :: array_mtx


integer, allocatable :: idade_vec(:,:,:)

allocate(idade_vec(2,2,2))

write(*,*) idade_vec
array_mtx = reshape((/1,2,3,4,5,6,7,8,9/),shape(array_mtx))

write(*,*) size(array_mtx,1),size(array_mtx,2)


end program matrix


