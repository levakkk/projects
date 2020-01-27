#include <iostream>
#include <ctime>

void PrintIntroduction(int Difficulty)
{
    //Prikaz teksta
    std::cout << "\n\nU zatvoru je izbila pobuna! Kako bi pobjegao iz zatvora, trebas pronaci sifru za " << Difficulty;
    std::cout << ". razinu lokota.\nPotrebno je desifrirati lokot za nastavak...\n\n";
}

bool PlayGame(int Difficulty)
{
    PrintIntroduction(Difficulty);

    //Deklariranje varijabla
    const int CodeA = rand() % Difficulty + Difficulty;
    const int CodeB = rand() % Difficulty + Difficulty;
    const int CodeC = rand() % Difficulty + Difficulty;

    const int CodeSum = CodeA + CodeB + CodeC;
    const int CodeProduct = CodeA * CodeB * CodeC;

    //Ispis
    std::cout << std::endl;
    std::cout << "|+| Postoje tri brojeva u sifri";
    std::cout << "\n|+| Zbroj brojeva je: " << CodeSum;
    std::cout << "\n|+| Umnozak brojeva je: " << CodeProduct;

    //pohranjuje korisnikov upis
    int GuessA, GuessB, GuessC;
    std::cout << std::endl;
    std::cout << "|-| Unesite sifru lokota: [format X Y Z]\n";
    std::cin >> GuessA >> GuessB >> GuessC;

    //std::cout << "Unesli ste broj: " << GuessA << GuessB << GuessC << std::endl;

    int GuessSum = GuessA + GuessB + GuessC;
    int GuessProduct = GuessA * GuessB * GuessC;

    //provjera ukoliko je unos ispravan
    if (GuessSum = CodeSum && GuessProduct == CodeProduct)
    {
        std::cout << "|++++++++++Tocna sifra!++++++++++|\n";
        return true;
    }
    else
    {
        std::cout << "|----------Netocna sifra! Pokusaj ponovno ili Back to tha hood!----------|\n";
        return false;
    }
}

int main()
{
    srand(time(NULL)); //random sekvenca bazirana na vremenu u danu

    int LevelDifficulty = 1;
    int const MaxDifficulty = 5;

    while (LevelDifficulty <= MaxDifficulty) //ide kroz petlju sve dok nisu zavrsene sve razine
        {
            bool bLevelComplete = PlayGame(LevelDifficulty);
            std::cin.clear(); //makiva greske
            std::cin.ignore(); //makiva buffer

            if (bLevelComplete)
            {
                ++LevelDifficulty;
            }
            
        }

    std::cout << "\nFreeeeeeedoooom!\n";
    return 0;
}