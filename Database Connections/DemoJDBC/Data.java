package dbms.vt;

public class Data {
	/* This TABLES contains SQL DDL for creating a table STATE in PostgreSQL*/
	public final static String TABLES =	"create table STATE (" + 
										"ABBREVIATION char(2) not null, " +
										"NAME varchar(32) not null, " +
										"CAPITAL varchar(32) not null, " +
										"REGION varchar(16) not null, " +
										"AREA int not null)";
	
	/* This VALUES contains SQL DDL for inserting all data into the table STATE in PostgreSQL*/
	public final static String[] VALUES = {
			"insert into STATE values ('AK','Alaska','Juneau','West',589757)",
			"insert into STATE values ('AL','Alabama','Montgomery','South',51609)",
			"insert into STATE values ('AR','Arkansas','Little Rock','South',53104)",
			"insert into STATE values ('AZ','Arizona','Phoenix','West',113909)",
			"insert into STATE values ('CA','California','Sacramento','West',158693)",
			"insert into STATE values ('CO','Colorado','Denver','West',104247)",
			"insert into STATE values ('CT','Connecticut','Hartford','Northeast',5009)",
			"insert into STATE values ('DE','Delaware','Dover','South',2057)",
			"insert into STATE values ('FL','Florida','Tallahassee','South',58560)",
			"insert into STATE values ('GA','Georgia','Atlanta','South',58876)",
			"insert into STATE values ('HI','Hawaii','Honolulu','West',6540)",
			"insert into STATE values ('IA','Iowa','Des Moines','North Central',56290)",
			"insert into STATE values ('ID','Idaho','Boise','West',  83557)",
			"insert into STATE values ('IL','Illinois','Springfield','North Central',  56400)",
			"insert into STATE values ('IN','Indiana','Indianapolis','North Central',  36291)",
			"insert into STATE values ('KS','Kansas','Topeka','North Central',  82264)",
			"insert into STATE values ('KY','Kentucky','Frankfort','South',  40395)",
			"insert into STATE values ('LA','Louisiana','Baton Rouge','South',  48523)",
			"insert into STATE values ('MA','Massachusetts','Boston','Northeast',   8257)",
			"insert into STATE values ('MD','Maryland','Annapolis','South',  10577)",
			"insert into STATE values ('ME','Maine','Augusta','Northeast',  33215)",
			"insert into STATE values ('MI','Michigan','Lansing','North Central',  58216)",
			"insert into STATE values ('MN','Minnesota','St. Paul','North Central',  84068)",
			"insert into STATE values ('MO','Missouri','Jefferson City','North Central',  69686)",
			"insert into STATE values ('MS','Mississippi','Jackson','South',  47716)",
			"insert into STATE values ('MT','Montana','Helena','West', 147138)",
			"insert into STATE values ('NC','North Carolina','Raleigh','South',  52586)",
			"insert into STATE values ('ND','North Dakota','Bismarck','North Central',  70665)",
			"insert into STATE values ('NE','Nebraska','Lincoln','North Central',  77227)",
			"insert into STATE values ('NH','New Hampshire','Concord','Northeast',   9304)",
			"insert into STATE values ('NJ','New Jersey','Trenton','Northeast',   7836)",
			"insert into STATE values ('NM','New Mexico','Santa Fe','West', 121666)",
			"insert into STATE values ('NV','Nevada','Carson City','West', 110540)",
			"insert into STATE values ('NY','New York','Albany','Northeast',  49576)",
			"insert into STATE values ('OH','Ohio','Columbus','North Central',  41222)",
			"insert into STATE values ('OK','Oklahoma','Oklahoma City','South',  69919)",
			"insert into STATE values ('OR','Oregon','Salem','West',  96981)",
			"insert into STATE values ('PA','Pennsylvania','Harrisburg','Northeast',  45333)",
			"insert into STATE values ('RI','Rhode Island','Providence','Northeast',   1214)",
			"insert into STATE values ('SC','South Carolina','Columbia','South',  31055)",
			"insert into STATE values ('SD','South Dakota','Pierre','North Central',  77047)",
			"insert into STATE values ('TN','Tennessee','Nashville','South',  42244)",
			"insert into STATE values ('TX','Texas','Austin','South', 267338)",
			"insert into STATE values ('UT','Utah','Salt Lake City','West',  84916)",
			"insert into STATE values ('VA','Virginia','Richmond','South',  40817)",
			"insert into STATE values ('VT','Vermont','Montpelier','Northeast',   9609)",
			"insert into STATE values ('WA','Washington','Olympia','West',  68192)",
			"insert into STATE values ('WI','Wisconsin','Madison','North Central',  56154)",
			"insert into STATE values ('WV','West Virginia','Charleston','South',  24181)",
			"insert into STATE values ('WY','Wyoming','Cheyenne','West',  97914)",
				};
}
