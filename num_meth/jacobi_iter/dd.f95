logical function dd(matrix, rows, columns)
   implicit none
   integer, intent(in) :: rows, columns
   real, dimension(rows, columns), intent(in) :: matrix
   integer :: rowCount, columnCount
   real :: diagonalElement
   real :: sumOfNondiagonalElements

   dd = .true.
   do rowCount = 1, rows
     diagonalElement = abs(matrix(rowCount, rowCount))
     sumOfNondiagonalElements = 0
     do columnCount = 1, columns
   	   if(columnCount /= rowCount) then
          sumOfNondiagonalElements = sumOfNondiagonalElements + abs(matrix(rowCount, columnCount))
       end if
     end do
     if(sumOfNondiagonalElements > diagonalElement) then
       dd = .false.
       return
     end if
   end do
end function dd