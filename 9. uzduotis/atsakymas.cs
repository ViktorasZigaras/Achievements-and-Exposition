using System;
using System.Collections.Generic;
using System.Linq;
//using System.Text; - nenaudojama

namespace KandUzd_Klase
{
    public class Mokinys
    {

        private string _pavarde;

        public string Pavarde
        {
            get { return _pavarde; }
            set { _pavarde = value; }
        }

        private double _vidurkis;

        public double Vidurkis
        {
            get { return _vidurkis; }
            set { _vidurkis = value; }
        }

        private List<int> _pazymiai;

        public List<int> Pazymiai
        {
            get { return _pazymiai; }
            set { _pazymiai = value; }
        }

        // Uzpildyti kontruktoriu - uzpildytas, prideti kintamieji, set, get metodai, panaudota LINQ funkcija
        public Mokinys(string pav, int[] paz)
        {
            _pavarde = pav;
            _pazymiai = paz.OfType<int>().ToList();
            _vidurkis = _pazymiai.Average();
        }

    }

    public class Klase
    {
        
        public List<Mokinys> mokiniai;

        private string _pavadinimas;

        public string Pavadinimas
        {
            get { return _pavadinimas; }
            set { _pavadinimas = value; }
        }

        private double _vidurkis;

        public double Vidurkis
        {
            get { return _vidurkis; }
            set { _vidurkis = value; }
        }

        private Mokinys _geriausias;

        public Mokinys Geriausias
        {
            get { return _geriausias; }
            set { _geriausias = value; }
        }

        // Pripildyti klase mokiniais - uzpildytas, prideti kintamieji, set, get metodai, panaudota LINQ funkcija
        public Klase(string pavad, params Mokinys[] m)
        {

            _pavadinimas = pavad;
            _vidurkis = m.Average(r => r.Vidurkis);
            double didziausiaReiksme = m.Max(y => y.Vidurkis); //tarpine reiksme paimta viena karta, kad be reikalo nesikartotu
            _geriausias = m.Where(x => x.Vidurkis == didziausiaReiksme).ElementAt(0);
            /*
            foreach (Mokinys mok in m)
            {
                if (_geriausias == null)
                {
                    _geriausias = mok;
                }
                else if (mok.Vidurkis > _geriausias.Vidurkis)
                {
                    _geriausias = mok;
                }
            }  
            */
            //is pradziu padariau "kaip iprates", bet po to supratau, kad pratimo esme persilauzti ir ismokti naudoti patogesne biblioteka
        }
    }

    class Program
    {
        //sioje vietoje susimasciau, gali buti be static, ar ne, bet matyt kaip iejimo i programa metodas turi buti static
        static void Main(string[] args)
        {
            Klase k1 = new Klase("10a",
                new Mokinys("Petrauskas", new int[] { 10, 2, 8, 9, 5, 6, 7 }),
                new Mokinys("Jonauskas", new int[] { 10, 10, 8, 6, 9, 10, 7 }),
                new Mokinys("Grumbliauskait�", new int[] { 10, 3, 8, 9, 5, 8, 7 }),
                new Mokinys("Antanauskait�", new int[] { 10, 9, 8, 4, 7, 6, 7 })
            );

            Klase k2 = new Klase("10b",
                new Mokinys("Klo�as", new int[] { 4, 2, 8, 5, 5, 7, 7 }),
                new Mokinys("Blo�as", new int[] { 10, 2, 2, 3, 4, 6, 3 }),
                new Mokinys("Matulyt�", new int[] { 8, 2, 8, 4, 5, 6, 7 })
            );

            Klase k3 = new Klase("10c",
                new Mokinys("Rinkevi�ius", new int[] { 10, 8, 4, 5, 5, 6, 7, 4, 6 }),
                new Mokinys("Petkevi�iut�", new int[] { 9, 2, 8, 4, 5, 10 }),
                new Mokinys("Jonaitis", new int[] { 7, 10, 8, 4, 3, 6, 8, 3 }),
                new Mokinys("Petraitis", new int[] { 10, 9, 8, 4 }),
                new Mokinys("Kabokas", new int[] { 6, 2, 6, 9, 8, 6, 7 }),
                new Mokinys("Martinyt�", new int[] { 8, 2, 8, 4, 5, 6, 8, 9, 1, 3 })
            );

            List<Klase> klases = new List<Klase> { k1, k2, k3 };

            // Kodas kuris r��iuoja klas�s pagal vidurkius eina �ia

            foreach (Klase k in klases)
            {
                //output veikia, tikrinau
                Console.WriteLine("Klase '{0}', vidurkis: {1}", k.Pavadinimas, k.Vidurkis);
                Console.WriteLine("Geriausias mokinys: '{0}', vidurkis {1}", k.Geriausias.Pavarde, k.Geriausias.Vidurkis);
                Console.WriteLine("--------------------------------------");
            }
        }
    }
}