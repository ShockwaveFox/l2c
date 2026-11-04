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