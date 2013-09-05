package com.chcitohned.domain

class Geopoint {

    String address
    Double latitude
    Double longitude
    String locationType

        
    static optionals = ['address', 'locationType', 'item']
    static belongsTo = [item:Item]
    static constraints = {
       latitude(nullable:false, min: -90d, max: 90d)
       longitude(nullable:false, min: -180d, max: 180d)
       address(nullable:true, blank:true)
       locationType(nullable:true, blank:true)
       item(nullable:true)
    }



    @Override
    public String toString() {
        return "Geopoint{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", locationType='" + locationType + '\'' +
                ", version=" + version +
                '}';
    }
}
