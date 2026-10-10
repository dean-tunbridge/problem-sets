#include <cs50.h>
#include <stdio.h>

int get_card_length(long card_number);
bool luhn_algorithm(long card_number);

int main(void)
{
  long card_number;
  do
  {
    card_number = get_long("Number: ");
  } while (card_number < 1);

  if (get_card_length(card_number) < 12 || get_card_length(card_number) > 19)
    printf("INVALID");

  if (!luhn_algorithm(card_number))
  {
    printf("INVALID");
  }
}

// CARD LENGTH CALCULATION //
int get_card_length(long card_number)
{
  if (card_number == 0)
    return 1;

  int count = 0;

  while (card_number != 0)
  {
    count++;
    card_number /= 10;
  }
  return count;
}

// LUHN ALGORITHM //
bool luhn_algorithm(long card_number)
{
  int sum = 0;
  int count = 0;
  int digit;

  while (card_number > 0)
  {
    digit = card_number % 10;
    card_number /= 10;

    count++;

    if (count % 2 == 0)
    {
      digit *= 2;
      if (digit > 9)
      {
        digit -= 9;
      }
    }
    sum += digit;
  }
  return sum % 10 == 0;
}
