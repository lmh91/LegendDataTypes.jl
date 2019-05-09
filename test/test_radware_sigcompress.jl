# This file is a part of LegendDataTypes.jl, licensed under the MIT License (MIT).

using LegendDataTypes
using Test

using EncodedArrays


@testset "radware_sigcompress" begin
    function test_enc_dec(data::Vector{<:Real}, ref_codeunits::Vector{UInt8})
        codec = @inferred RadwareSigcompress(eltype(data))

        data_enc = EncodedArray{eltype(data)}(codec, size(data), ref_codeunits)

        @test @inferred(data |> codec) == data_enc
        @test @inferred(Array(data_enc)) == data
        @test typeof(Array(data_enc)) == typeof(data)
        @test @inferred(Array(data |> codec))  == data
    end

    test_enc_dec(
        [5, -7, -14, 17, -21, 0, -10, -2, -17, -14, 22, -5, -7, 7, 14, -2, 1, 0, -7, -21, -5, -15, -5, 11, 2, -24, 18, 2, -9, -3, 4, 7, -14, 12, 8, -23, 9, -8, 6, -2, 3, 9, -4, -10, -20, 5, 9, 12, 21, 3, 95, 189, 294, 405, 487, 593, 702, 781, 896, 1034, 986, 1004, 1011, 996, 990, 1005, 1003, 987, 1003, 994, 1008, 996, 989, 995, 997, 996, 985, 1010, 1006, 995, 988, 993, 1013, 1005, 985, 1025, 1008, 995, 1004, 1003],
        UInt8[0x00, 0x5a, 0x00, 0x32, 0x00, 0x06, 0xff, 0xe8, 0x75, 0x12, 0xa9, 0x0d, 0x83, 0x96, 0x1c, 0xab, 0x93, 0x45, 0xf9, 0x96, 0x65, 0x84, 0x43, 0x4c, 0x94, 0xe3, 0x68, 0x0a, 0x9a, 0x3d, 0x57, 0x1f, 0x2a, 0x48, 0x01, 0x85, 0x07, 0x96, 0x6e, 0x15, 0x0e, 0x11, 0xd8, 0x64, 0xb5, 0xb0, 0x00, 0x28, 0x00, 0x28, 0x00, 0x5f, 0xff, 0xd0, 0x8e, 0x99, 0x9f, 0x82, 0x9a, 0x9d, 0x7f, 0xa3, 0xba, 0x00, 0x42, 0x37, 0x21, 0x2a, 0x3f, 0x2e, 0x20, 0x40, 0x27, 0x3e, 0x24, 0x29, 0x36, 0x32, 0x2f, 0x25, 0x49, 0x2c, 0x25, 0x29, 0x35, 0x44, 0x28, 0x1c, 0x58, 0x1f, 0x23, 0x39, 0x2f, 0x00, 0x00, 0x00]
    )

    test_enc_dec(
        [107, 105, 113, 112, 105, 91, 119, 126, 110, 117, 105, 98, 129, 91, 112, 102, -33, 213, -54, 312, 107, 97, 107, 123, 114, 88, 130, 114, 103, 109, 116, 119, 98, 124, 120, 89, 121, 104, 118, 110, 115, 121, 108, 102, 92, 117, 121, 124, 133, 115, 207, 301, 406, 517, 599, 705, 814, 893, 1008, 1146, 1098, 1116, 1123, 1108, 1102, 1117, 1115, 1099, 1115, 1106, 1120, 1108, 1101, 1107, 1109, 1108, 1097, 1122, 1118, 1107, 1100, 1105, 1125, 1117, 1097, 1137, 1120, 1107, 1116, 1115],
        UInt8[0x00, 0x5a, 0x00, 0x35, 0x00, 0x09, 0xff, 0xca, 0x50, 0xa7, 0xd4, 0xea, 0x64, 0xfa, 0x45, 0x5a, 0xb4, 0x52, 0x2a, 0xd3, 0xe9, 0x85, 0xba, 0x45, 0x4c, 0x9c, 0x0a, 0xc2, 0xc0, 0x16, 0xe5, 0x0a, 0x5d, 0x42, 0xb1, 0x54, 0x23, 0x97, 0x0a, 0x84, 0xea, 0x8d, 0x54, 0xad, 0x4c, 0x2c, 0x95, 0xc8, 0xf5, 0x7a, 0x79, 0x58, 0xa4, 0x54, 0xab, 0xd4, 0x49, 0xc4, 0x92, 0xad, 0x5e, 0xb2, 0x5d, 0xaa, 0x60, 0xb6, 0x3e, 0x60, 0x00, 0x25, 0x00, 0x28, 0x02, 0x05, 0xff, 0xd0, 0x82, 0x9a, 0x9d, 0x7f, 0xa3, 0xba, 0x00, 0x42, 0x37, 0x21, 0x2a, 0x3f, 0x2e, 0x20, 0x40, 0x27, 0x3e, 0x24, 0x29, 0x36, 0x32, 0x2f, 0x25, 0x49, 0x2c, 0x25, 0x29, 0x35, 0x44, 0x28, 0x1c, 0x58, 0x1f, 0x23, 0x39, 0x2f]
    )
end
