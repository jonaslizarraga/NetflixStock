SELECT 
       [Date]
      ,[Close]
      ,[High]
      ,[Low]
      ,[Open]
      ,[Volume]
      ,datename(MONTH,[date])Month
      ,Year([date])Year
      ,Avg([close]) over (partition by month([date]) )MnthCloseAvg
      ,Avg([High]) over (partition by month([date]) )MnthHighAvg
      ,Avg([Low]) over (partition by month([date]) )MnthLowAvg
      ,Avg([Open]) over (partition by month([date]) )MnthOpenAvg
      ,sum([Volume]) over (partition by month([date]) )MnthVolume
      --into #Jl_2024
  FROM [Operations].[dbo].[NetflixStock] (nolock)
  --where year(date) = 2024
  group by [Date]
      ,[Close]
      ,[High]
      ,[Low]
      ,[Open]
      ,[Volume]
      ,datename(month,[date])
      ,year([date])
