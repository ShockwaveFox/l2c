-- Slowest visually complete pages
--"TKMaxxAT" "TKMaxxDE"
SELECT visuallyCompleteTime, name from useraction
WHERE application IS "TKMaxxUK" --
AND visuallyCompleteTime >=(3000)
ORDER BY visuallyCompleteTime DESC

-- Mobile vs Web apps
-- "Germany" "Austria"
SELECT applicationType, COUNT(*) AS "Sessions" FROM usersession 
WHERE country IS "United Kingdom"
AND userType = "REAL_USER"
GROUP BY applicationType

--- Top 5 countries by sessions count
SELECT country, COUNT(*) AS "Sessions" FROM usersession
WHERE userType = "REAL_USER"
GROUP BY country
ORDER BY count(*) DESC
LIMIT 5

-- Request and JS errors for URLs - top 20 - /uk/en URLs only
SELECT useraction.name AS Name,
SUM(useraction.requestErrorCount) AS [Request-Errors], 
SUM(useraction.javascriptErrorCount) AS [JavaScript-Errors] FROM useraction
WHERE (useraction.requestErrorCount >0 or useraction.javascriptErrorCount >0)
AND application IS "TKMaxxUK"
AND Name LIKE "/uk/en/%"
GROUP BY useraction.name
ORDER BY JavaScript-Errors DESC
LIMIT 20

-- Request and JS errors for URLs - top 20 - NOT  /uk/en URLs
SELECT useraction.name AS Name,
SUM(useraction.requestErrorCount) AS [Request-Errors], 
SUM(useraction.javascriptErrorCount) AS [JavaScript-Errors] FROM useraction
WHERE (useraction.requestErrorCount >0 or useraction.javascriptErrorCount >0)
AND application IS "TKMaxxUK"
AND useraction.name NOT LIKE "%/uk/en/%"
GROUP BY useraction.name
ORDER BY JavaScript-Errors DESC
LIMIT 20

-- Top 10 frustrating user actions
-- "/de/de/%" "/at/de/%"
SELECT useraction.name AS Name, apdexCategory,
COUNT(*) AS [Name Count] from useraction
WHERE apdexCategory IS "FRUSTRATED"
AND useraction.name LIKE "/uk/en/%"
GROUP BY useraction.name, apdexCategory
ORDER BY count(*) DESC
LIMIT 10

-- Total errors filtered by browsertype, family and usertype
SELECT browserType, browserFamily, userType,
  usererror.name AS "User Errors",
  COUNT(usererror.name) FILTER > 10 AS "Count"
FROM usersession
WHERE useraction.application = "TKMaxxUK"
AND usertype = "REAL_USER"
AND browserType = "Desktop Browser"
GROUP BY usererror.name, browserType, browserFamily, userType
ORDER BY COUNT(usererror.name) DESC

-- 
SELECT internalUserId, browserType, browserFamily, userType,
  TOP (usererror.name, 100) AS "Errors",
  COUNT(usererror.name) AS "Count"
FROM usersession
WHERE useraction.application = "TKMaxxUK"
AND usertype = "REAL_USER"
AND browserType = "Desktop Browser"
GROUP BY internalUserId, usererror.name, browserType, browserFamily, userType
ORDER BY COUNT(usererror.name) DESC

-- Count of specific error name
SELECT useraction.name,
COUNT(usererror.name) AS "Count"  
FROM usersession
WHERE useraction.application = "TKMaxxUK"
AND usertype = "REAL_USER"
AND browserType = "***MOBILE OR DESKTOP***"
AND usererror.name = "***ERROR NAME***"
GROUP BY useraction.name
ORDER BY COUNT(usererror.name) DESC

-- Count of specific error by browser family
SELECT browserFamily,
COUNT(usererror.name) AS "Count"  
FROM usersession
WHERE useraction.application = "TKMaxxUK"
AND usertype = "REAL_USER"
AND browserType = "***MOBILE OR DESKTOP***"
AND usererror.name = "e.target.className.includes is not a function"
GROUP BY browserFamily
ORDER BY COUNT(usererror.name) DESC

SELECT internalUserId, useraction.startTime,
COUNT(usererror.name) AS "Count"  
FROM usersession
WHERE useraction.application = "TKMaxxUK"
AND usertype = "REAL_USER"
AND browserType = "Desktop Browser"
AND usererror.name = "e.target.className.includes is not a function"
GROUP BY internalUserId, useraction.startTime
ORDER BY COUNT(usererror.name) DESC