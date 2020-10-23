using System;
using System.Numerics;

namespace Euler55
{
    class Program
    {
        static void Main(string[] args)
        {
            var watch = new System.Diagnostics.Stopwatch();
            watch.Start();
            int result = 10000;
            for (int j = 0; j < 10000; j++)
            {
                BigInteger temp = j;
                for (int i = 0; i < 50; i++)
                {
                    temp += reverse_num(temp);
                    if (isPalindrome(temp))
                    {
                        result--;
                        break;
                    }
                }
            }
            watch.Stop();
            Console.WriteLine(result + " numbers");
            Console.WriteLine(watch.ElapsedMilliseconds + " ms");
            Console.ReadKey();
        }
        static BigInteger reverse_num(BigInteger num)
        {
            BigInteger b = 0;
            while (num > 0)
            {
                b *= 10;
                b += (num % 10);
                num /= 10;
            }
            return b;
        }
        static bool isPalindrome(BigInteger val)
        {
            return val == reverse_num(val);
        }
    }
}
