{-
��������� ������� �� ���������� ������. ������� ����� ����������� ���� ���������. 
���������� ����� ������ � ����������� (0,0) ����� ��������������� ����������. 
���� �� ����� ���� ������ ����� ���������� (0,0). 
� ������ ��������� ����� ������������� ���������� ����� ������ ���� �����.

���������� ������� getCenter, ������� ��������� ���������� ������ � ���������� ���������� �� ������, � ������� getCell, 
������� ��������� ���������� ����� � ���������� ����� ������ � ������� ��������� ������ �����. 
� �������� ������� ��������� ��� ��� ������� ��������� ������ ������.
-}

module Demo where

data Coord a = Coord a a

getCenter :: Double -> Coord Int -> Coord Double
getCenter = undefined

getCell :: Double -> Coord Double -> Coord Int
getCell = undefined