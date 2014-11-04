table "players" do
	column "PLAYER", :key, :as => :integer
	column "FNAME", :string
	column "LNAME", :string
	column "PNAME", :string
	column "POS1", :string
	column "POS2", :string
	column "HEIGHT", :integer
	column "WEIGHT", :integer
	column "YOB", :integer
	column "FORTY", :decimal
	column "BENCH", :integer
	column "VERTICAL", :decimal
	column "BROAD", :integer
	column "SHUTTLE", :decimal
	column "CONE", :decimal
	column "DPOS", :integer
	column "COL", :string
	column "DV", :string
	column "START", :integer
	column "CTEAM", :string
end


table "kickoffplays", :embed_in => :players, :embed_on => :kicker do
	column "pid", :key
	column "type", :string
	column "kicker", :integer, :references => "players"
	column "kgro", :integer
	column "knet", :integer
	column "ktb", :string
	column "kr", :string
	column "kry", :integer
end


table "passplays", :embed_in => :players, :on => :passer do
	column "pid", :key
	column "type", :string
	column "passer", :integer, :references => "players"
	column "trg", :string
	column "loc", :string
	column "yds", :integer
end


table "puntplays", :embed_in => :players, :on => :punter  do
	column "pid", :key
	column "type", :string
	column "punter", :integer, :references => "players"
	column "pry", :integer
	column "pgro", :integer
	column "pnet", :integer
end

table "rushplays", :embed_in => :players, :on => :ball_carrier  do
	column "pid", :key
	column "type", :string
	column "ball_carrier", :integer, :references => "players"
	column "dir", :string
	column "yds", :integer
end

table "team" do
	column "TID", :key
	column "GID", :integer
	column "TNAME", :string
	column "PTS", :integer
	column "1QP", :integer
	column "2QP", :integer
	column "3QP", :integer
	column "4QP", :integer
	column "RFD", :integer
	column "PFD", :integer
	column "IFD", :integer
	column "RY", :integer
	column "RA", :integer
	column "PY", :integer
	column "PA", :integer
	column "PC", :integer
	column "SK", :integer
	column "INT", :boolean
	column "FUM", :boolean
	column "PU", :integer
	column "GPY", :integer
	column "PR", :integer
	column "PRY", :integer
	column "KR", :integer
	column "KRY", :integer
	column "IR", :boolean
	column "IRY", :integer
	column "PEN", :integer
	column "TOP", :decimal
	column "TD", :boolean
	column "TDR", :boolean
	column "TDP", :boolean
	column "TDT", :boolean
	column "FGM", :boolean
	column "FGAT", :integer
	column "FGY", :integer
	column "RZA", :integer
	column "RZC", :boolean
	column "BRY", :integer
	column "BPY", :integer
	column "SRP", :integer
	column "S1RP", :integer
	column "S2RP", :integer
	column "S3RP", :integer
	column "SPP", :integer
	column "S1PP", :integer
	column "S2PP", :integer
	column "S3PP", :integer
	column "LEA", :integer
	column "LEY", :integer
	column "LTA", :integer
	column "LTY", :integer
	column "LGA", :integer
	column "LGY", :integer
	column "MDA", :integer
	column "MDY", :integer
	column "RGA", :integer
	column "RGY", :integer
	column "RTA", :integer
	column "RTY", :integer
	column "REA", :integer
	column "REY", :integer
	column "R1A", :integer
	column "R1Y", :integer
	column "R2A", :integer
	column "R2Y", :integer
	column "R3A", :integer
	column "R3Y", :integer
	column "QBA", :integer
	column "QBY", :integer
	column "SLA", :integer
	column "SLY", :integer
	column "SMA", :integer
	column "SMY", :integer
	column "SRA", :integer
	column "SRY", :integer
	column "DLA", :integer
	column "DLY", :integer
	column "DMA", :integer
	column "DMY", :integer
	column "DRA", :integer
	column "DRY", :integer
	column "WR1A", :integer
	column "WR1Y", :integer
	column "WR3A", :integer
	column "WR3Y", :integer
	column "TEA", :integer
	column "TEY", :integer
	column "RBA", :integer
	column "RBY", :integer
	column "SGA", :integer
	column "SGY", :integer
	column "P1A", :integer
	column "P1Y", :integer
	column "P2A", :integer
	column "P2Y", :integer
	column "P3A", :integer
	column "P3Y", :integer
	column "SPC", :integer
	column "MPC", :integer
	column "LPC", :integer
	column "Q1RA", :integer
	column "Q1RY", :integer
	column "Q1PA", :integer
	column "Q1PY", :integer
	column "LCRA", :integer
	column "LCRY", :integer
	column "LCPA", :integer
	column "LCPY", :integer
	column "RZRA", :integer
	column "RZRY", :integer
	column "RZPA", :integer
	column "RZPY", :integer
	column "SKY", :integer
	column "LBS", :decimal
	column "DBS", :decimal
	column "SFPY", :integer
	column "DRV", :integer
	column "NPY", :integer
	column "TB", :boolean
	column "I20", :boolean
	column "RTD", :boolean
	column "LNR", :decimal
	column "LNP", :decimal
	column "LBR", :decimal
	column "LBP", :decimal
	column "DBR", :decimal
	column "DBP", :decimal
	column "NHA", :integer
	column "S3A", :integer
	column "S3C", :integer
	column "L3A", :integer
	column "L3C", :integer
	column "STF", :integer
	column "DP", :integer
	column "FSP", :integer
	column "OHP", :integer
	column "PBEP", :boolean
	column "DLP", :boolean
	column "DSP", :boolean
	column "DUM", :boolean
	column "PFN", :boolean
end
