import com.chcitohned.domain.User
import com.chcitohned.domain.Category
import com.chcitohned.domain.Item
import com.chcitohned.domain.Subscription
import com.chcitohned.domain.Geopoint

class BootStrap {

    def init = { servletContext ->

        Geopoint pragueFolimanka = new Geopoint(latitude: '50.066836', longitude: '14.429312')
        Geopoint pragueKavciHory = new Geopoint(latitude: '50.048101', longitude: '14.421759')        
        Geopoint pragueEden = new Geopoint(latitude: '50.067057', longitude: '14.470167')
        Geopoint pragueBohdalec = new Geopoint(latitude: '50.058241', longitude: '14.466562')
        Geopoint pragueKosire = new Geopoint(latitude: '50.066754', longitude: '14.362514')
        Geopoint pragueLadronka = new Geopoint(latitude: '50.079314', longitude: '14.358008')
        Geopoint pragueAndel = new Geopoint(latitude: '50.071602', longitude: '14.403502')
        Geopoint pragueMalaStrana = new Geopoint(latitude: '50.088401', longitude: '14.403158')  
        
        Geopoint pragueDejvicka = new Geopoint(latitude: '50.100872', longitude: '14.396181')
        Geopoint pragueVinohrady = new Geopoint(latitude: '50.076752', longitude: '14.449396')
        Geopoint pragueHrdlorezy = new Geopoint(latitude: '50.093274', longitude: '14.508791')
        Geopoint praguePalmovka = new Geopoint(latitude: '50.103405', longitude: '14.477892')
        Geopoint pragueHolesovice = new Geopoint(latitude: '50.110891', longitude: '14.449224')
        Geopoint pragueStromovka = new Geopoint(latitude: '50.10869', longitude: '14.422274')
        Geopoint pragueLetna = new Geopoint(latitude: '50.095697', longitude: '14.414721')
        Geopoint praguePodskali = new Geopoint(latitude: '50.06915', longitude: '14.418497')
        Geopoint frankfurtCentre = new Geopoint(latitude: '50.103432', longitude: '8.675888')
        
        frankfurtCentre.save()
        pragueDejvicka.save()
        pragueVinohrady.save()
        pragueHrdlorezy.save()
        praguePalmovka.save()
        pragueHolesovice.save()
        pragueStromovka.save()
        pragueLetna.save()
        praguePodskali.save()        
        pragueFolimanka.save() 
        pragueKavciHory.save()   
        pragueEden.save()
        pragueBohdalec.save()
        pragueKosire.save()
        pragueLadronka.save()
        pragueAndel.save()
        pragueMalaStrana.save()    

        User u = new User(login:'user', password:'user', firstName:'Pam', lastName:'le Coder', email: 'chcito@hned.cz' )
        User u2 = new User(login:'clinton', password:'clinton', firstName:'Bill', lastName:'Clinton', email: 'bill@whitehouse.com' )
        User u3 = new User(login:'lewinsky', password:'lewinsky', firstName:'Monica', lastName:'Lewinsky', email: 'monica@whitehouse.com' )
        
        u.save()
        u2.save()
        u3.save()
        
        Category category = new Category(name: 'Sex')
        Category category2 = new Category(name: 'Food')
        Category category3 = new Category(name: 'Money')
        
        category2.save()
        category.save()
        category3.save()
        
        
        Item blowJob = new Item(name:'Blow Job', description:'...best you have ever had')
        blowJob.category = category;       
        blowJob.location = frankfurtCentre;
        blowJob.save()
               
        Item bigMac = new Item(name:'Big Mac (TM)', description:'juicy burger')
        bigMac.category = category2;
        bigMac.location = pragueDejvicka
        bigMac.save()
        
        Item cheese = new Item(name:'Cheeseburger', description:'cheesy burger')
        cheese.category = category2;
        cheese.location = pragueVinohrady;
        cheese.save()

        Item ham = new Item(name:'Ham Burger', description:'yummy burger')
        ham.category = category2;
        ham.location = pragueHrdlorezy;
        ham.save()
        
        Item chicken = new Item(name:'Chickenburger', description:'chicken burger')
        chicken.category = category2;
        chicken.location = praguePalmovka;
        chicken.save()
        
        Item tasty = new Item(name:'Big Tasty (TM)', description:'killer burger')
        tasty.category = category2;
        tasty.location = pragueStromovka;
        tasty.save()
        
        Item tastyB = new Item(name:'Big Tasty Bacon (TM)', description:'ultra killer burger')
        tastyB.category = category2;
        tastyB.location = pragueFolimanka;
        tastyB.save()
        
        Item ultra = new Item(name:'Ultra Burger(TM)', description:'the ultimate burger')
        ultra.category = category2;
        ultra.location = pragueLetna;
        ultra.save()
        
                Item royal = new Item(name:'Royal (TM)', description:'Mac Roayal burger')
        royal.category = category2;
        royal.location = pragueKavciHory;
        royal.save()

        Item country = new Item(name:'Mc Country', description:'Mac Country burger')
        country.category = category2;
        country.location = pragueEden;
        country.save()

        Item freshCheese = new Item(name:'Cheeseburger Fresh', description:'Fresh Cheeseburger')
        freshCheese.category = category2;
        freshCheese.location = pragueBohdalec;
        freshCheese.save()

        Item doubleCheese = new Item(name:'Double Cheeseburger', description:'2x Cheeseburger')
        doubleCheese.category = category2;
        doubleCheese.location = pragueLadronka;
        doubleCheese.save()        

        Item filet = new Item(name:'Filet-o-Fish', description:'Fish burger')
        filet.category = category2;
        filet.location = pragueKosire;
        filet.save()   

        Item klobasa = new Item(name:'Klobása', description:'Klobása z vůzku')
        klobasa.category = category2;
        klobasa.location = pragueAndel;
        klobasa.save()   

        Item trdelnik = new Item(name:'Trdelník', description:'Trdelník z vůzku')
        trdelnik.category = category2;
        trdelnik.location = pragueMalaStrana;
        trdelnik.save()   
                
        
        Item loan = new Item(name:'Pujcka', description:'vyhodna pujcka od Home Credit a.s.')
        loan.category = category3;
        loan.location = pragueHolesovice;
        loan.save()
        
        Subscription s = new Subscription(buyer:u2, seller:u3, items:[blowJob])
        Subscription s2 = new Subscription(buyer:u, seller:u3, items:[bigMac])
        Subscription s3 = new Subscription(buyer:u3, seller:u, items:[loan])
        s.save()        
        s2.save()       
        s3.save()   
        
        
    }
    def destroy = {
    }
}
