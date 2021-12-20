use Test2::V0;

use GD::Barcode;

is(GD::Barcode->new("UPCE", "12345678")->barcode(), 'G0G0011011011110100111010110001010111100100010G0G0G', 'UPCE/8');

is(GD::Barcode->new("UPCE", "1234567")->barcode(), 'G0G0011011010000100111010110001010111101110110G0G0G', 'UPCE/7');

is(GD::Barcode->new("UPCE", "123456")->barcode(), 'G0G0110011001001101111010011101011100101011110G0G0G', 'UPCE/6');


# raises
# is(GD::Barcode->new("UPCE", "12345")->barcode(), 'G0G0011011011110100111010110001010111100100010G0G0G', 'UPCE/5');

done_testing;