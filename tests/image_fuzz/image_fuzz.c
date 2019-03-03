#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <stdint.h>
#include <limits.h>

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
   int x, y, n;
   unsigned char *img;

   if (size > (size_t)INT_MAX)
      return 0;

   // just load and immediately free
   img = stbi_load_from_memory(data, (int)size, &x, &y, &n, 0);
   if (data)
      stbi_image_free(img);

   return 0;
}
