select saleDate, CONVERT(Date, saleDate)
from dbo.inzamam;
update dbo.inzamam
Set saleDate = CONVErt(Date, saleDate)
select saleDate
from dbo.inzamam;

alter table inzamam
add saleDateConverted Date;

update inzamam
set saleDateConverted = CONVERT (Date , saleDate)

select saleDateConverted from dbo.inzamam
use emp_id
select * from dbo.inzamam
-- where PropertyAddress is Null
order by ParcelID
 


 select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress, b.PropertyAddress)
 
 from dbo.inzamam a
 join dbo.inzamam b on a.ParcelID = b.ParcelID
 and a.[UniqueID ] <> b.[UniqueID ]

 where a.PropertyAddress is Null


 update a
 set PropertyAddress =  ISNULL(a.PropertyAddress, b.PropertyAddress)
 from dbo.inzamam a
 join dbo.inzamam b on a.ParcelID = b.ParcelID
 and a.[UniqueID ] <> b.[UniqueID ]


 select PropertyAddress from dbo.inzamam;

 select 
 SUBSTRING(PropertyAddress , 1,  CHARINDEX(',', PropertyAddress) -1) as Address,
 substring (PropertyAddress, CHARINDEX(',' , PropertyAddress) + 1 , len(PropertyAddress )) as Address

 from dbo.inzamam;

 Alter table inzamam 
  add PropertySplitCity varchar(255);
 
 select OwnerAddress from dbo.inzamam;

 select 
 PARSENAME(Replace(OwnerAddress, ',','-') , 1)
 
 from dbo.inzamam;
 -- we wanna change y and n to Yes and No
 select distinct(SoldAsVacant), count(SoldAsVacant)
 from dbo.inzamam
 Group By SoldAsVacant 
 order by 2;
use emp_id;



select SoldAsVacant 
 CASE when SoldAsVacant = 'Y' THEN 'YES'
      when SoldAsVacant = 'N' then 'No'
	  else SoldAsVacant
	  END
 from dbo.inzamam; 

 update inzamam 
 set SoldAsVacant = CASE when SoldAsVacant = 'Y' THEN 'YES'
      when SoldAsVacant = 'N' then 'No'
	  else SoldAsVacant
	  END

insert into emp_id.dbo.ahmad 
(age , FirstName, LastName)
Values 
(80, 'Shahzad', 'Hello')

select * from dbo.ahmad;