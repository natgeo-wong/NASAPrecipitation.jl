"""
    IMERGDaily{ST<:AbstractString, DT<:TimeType} <: IMERGDataset

Object containing information on Daily IMERG datasets to be downloaded
"""
struct IMERGDaily{ST<:AbstractString, DT<:TimeType} <: IMERGDataset
	npdID :: ST
	lname :: ST
	doi   :: ST
    start :: DT
    stop  :: DT
    datapath :: ST
    maskpath :: ST
    hroot :: ST
    fpref :: ST
    fsuff :: ST
end

"""
    IMERGEarlyDY(
        ST = String,
        DT = Date;
        start :: TimeType,
        stop  :: TimeType,
        path :: AbstractString = homedir(),
    ) -> npd :: IMERGDaily{ST,DT}

Creates a `IMERGDaily` dataset `npd` to retrieve datasets from the Near Real-Time Early processing runs for Daily output

Keyword Arguments
=================
- `start` : Date at which download / analysis of the dataset begins
- `stop ` : Date at which download / analysis of the dataset ends
- `path` : The directory in which the folder `imergearlydy` will be created for data downloads, storage and analysis, default is the home directoy called by `homedir()`

The following fields in `npd` will be fixed as below:
- `npdID` : imergearlydy
- `lname` : Early IMERG Daily
- `doi`   : 10.5067/GPM/IMERGDE/DAY/06
- `hroot` : https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDE.06
- `fpref` : 3B-DAY-E.MS.MRG.3IMERG
- `fsuff` : S000000-E235959.V06.nc4
"""
function IMERGEarlyDY(
    ST = String,
    DT = Date;
    start :: TimeType = Date(2000,6),
    stop  :: TimeType = Dates.now() - Month(2),
    path  :: AbstractString = homedir(),
)

	@info "$(modulelog()) - Setting up data structure containing information on Early IMERG Daily data to be downloaded"

    fol = joinpath(path,"imergearlydy"); if !isdir(fol); mkpath(fol) end
    fol = joinpath(path,"imergmask");    if !isdir(fol); mkpath(fol) end

	start = Date(year(start),month(start),1)
	stop  = Date(year(stop),month(stop),daysinmonth(stop))
    imergcheckdates(start,stop )

    return IMERGDaily{ST,DT}(
		"imergearlydy", "Early IMERG Daily", "10.5067/GPM/IMERGDE/DAY/06",
        start, stop ,
		joinpath(path,"imergearlydy"),
		joinpath(path,"imergmask"),
        "https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDE.06",
        "3B-DAY-E.MS.MRG.3IMERG", "S000000-E235959.V06.nc4",
    )

end

"""
    IMERGLateDY(
        ST = String,
        DT = Date;
        start :: TimeType,
        stop  :: TimeType,
        path :: AbstractString = homedir(),
    ) -> npd :: IMERGDaily{ST,DT}

Creates a `IMERGDaily` dataset `npd` to retrieve datasets from the Near Real-Time Late processing runs for Daily output

Keyword Arguments
=================
- `start` : Date at which download / analysis of the dataset begins
- `stop ` : Date at which download / analysis of the dataset ends
- `path` : The directory in which the folder `imerglatedy` will be created for data downloads, storage and analysis, default is the home directoy called by `homedir()`

The following fields in `npd` will be fixed as below:
- `npdID` : imerglatedy
- `lname` : Late IMERG Daily
- `doi`   : 10.5067/GPM/IMERGDL/DAY/06
- `hroot` : https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDL.06
- `fpref` : 3B-DAY-L.MS.MRG.3IMERG
- `fsuff` : S000000-E235959.V06.nc4
"""
function IMERGLateDY(
    ST = String,
    DT = Date;
    start :: TimeType = Date(2000,6),
    stop  :: TimeType = Dates.now() - Month(2),
    path :: AbstractString = homedir(),
)

	@info "$(modulelog()) - Setting up data structure containing information on Late IMERG Daily data to be downloaded"

    fol = joinpath(path,"imerglatedy"); if !isdir(fol); mkpath(fol) end
    fol = joinpath(path,"imergmask");   if !isdir(fol); mkpath(fol) end

	start = Date(year(start),month(start),1)
	stop  = Date(year(stop),month(stop),daysinmonth(stop))
    imergcheckdates(start,stop )

    return IMERGDaily{ST,DT}(
		"imerglatedy", "Late IMERG Daily", "10.5067/GPM/IMERGDL/DAY/06",
        start, stop ,
		joinpath(path,"imerglatedy"),
		joinpath(path,"imergmask"),
        "https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDL.06",
        "3B-DAY-L.MS.MRG.3IMERG", "S000000-E235959.V06.nc4",
    )

end

"""
    IMERGFinalDY(
        ST = String,
        DT = Date;
        start :: TimeType,
        stop  :: TimeType,
        path :: AbstractString = homedir(),
    ) -> npd :: IMERGDaily{ST,DT}

Creates a `IMERGDaily` dataset `npd` to retrieve datasets from the Final post-processing runs for Daily output

Keyword Arguments
=================
- `start` : Date at which download / analysis of the dataset begins
- `stop ` : Date at which download / analysis of the dataset ends
- `path` : The directory in which the folder `imergfinaldy` will be created for data downloads, storage and analysis, default is the home directoy called by `homedir()`

The following fields in `npd` will be fixed as below:
- `npdID` : imergfinaldy
- `npdID` : Final IMERG Daily
- `doi`   : 10.5067/GPM/IMERGDF/DAY/06
- `hroot` : https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDF.06
- `fpref` : 3B-DAY.MS.MRG.3IMERG
- `fsuff` : S000000-E235959.V06.nc4
"""
function IMERGFinalDY(
    ST = String,
    DT = Date;
    start :: TimeType = Date(2000,6),
    stop  :: TimeType = Dates.now() - Month(6),
    path :: AbstractString = homedir(),
)

	@info "$(modulelog()) - Setting up data structure containing information on Final IMERG Daily data to be downloaded"

    fol = joinpath(path,"imergfinaldy"); if !isdir(fol); mkpath(fol) end
    fol = joinpath(path,"imergmask");    if !isdir(fol); mkpath(fol) end

	start = Date(year(start),month(start),1)
	stop  = Date(year(stop),month(stop),daysinmonth(stop))
    imergcheckdates(start,stop )

    return IMERGDaily{ST,DT}(
		"imergfinaldy", "Final IMERG Daily", "10.5067/GPM/IMERGDF/DAY/06",
        start, stop ,
		joinpath(path,"imergfinaldy"),
		joinpath(path,"imergmask"),
        "https://gpm1.gesdisc.eosdis.nasa.gov/opendap/GPM_L3/GPM_3IMERGDF.06",
        "3B-DAY.MS.MRG.3IMERG", "S000000-E235959.V06.nc4",
    )

end

function show(io::IO, npd::IMERGDaily{ST,DT}) where {ST<:AbstractString, DT<:TimeType}
    print(
		io,
		"The NASA Precipitation Dataset {$ST,$DT} has the following properties:\n",
		"    Dataset ID        (npdID) : ", npd.npdID, '\n',
		"    Logging Name      (lname) : ", npd.lname, '\n',
		"    DOI URL             (doi) : ", npd.doi,   '\n',
		"    Data Directory (datapath) : ", npd.datapath, '\n',
		"    Mask Directory (maskpath) : ", npd.maskpath, '\n',
		"    Date Begin        (start) : ", npd.start, '\n',
		"    Date End           (stop) : ", npd.stop , '\n',
		"    Timestep                  : 1 Day\n",
        "    Data Resolution           : 0.1??\n",
        "    Data Server       (hroot) : ", npd.hroot, '\n',
	)
end
