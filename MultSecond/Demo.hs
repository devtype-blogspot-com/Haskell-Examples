{- � ��������� ��������� ��������� �� �������� ����� ���, � ����� �����������. ��� ����� ������������ �������, ��������� � ������������������� � ��������� (������ ������) ���������. ����� ������ (����� ���������), ��� ��� ����������� ���� �������� �� ��������� �����. � GHCi ��� �� ��������� ���������, � ��� ��� ���������� �� ������ �� ��������� ��������. ��������� monomorphism restriction �����, ������ � ������ ����� ��������� ���� ��������� ������: -}
{-# LANGUAGE NoMonomorphismRestriction #-}

module Demo where

{- � ������ Data.Function ���������� �������� ������� ������� ������� -}
on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
on op f x y = f x `op` f y
{- ��� ��������� ������ ���������: 
 1) �������� �������� � ����������� ����������� (���� b), 
 2) ������� f :: a -> b, ������������ �������� ���� b, 
 3,4) � ��� �������� ���� a. 
������� on ��������� f ������ � ���� ��������� ���� a � �������� ��������� � �������� ��������.

��������� on �����, ��������, �������� ������� ������������ ��������� ���������� ���: -}
sumSquares = (+) `on` (^2)

{- ������� multSecond, ������������� ������ �������� ���, ����������� ��������� ������� -}
multSecond = g `on` h
g = (*)
h = snd
