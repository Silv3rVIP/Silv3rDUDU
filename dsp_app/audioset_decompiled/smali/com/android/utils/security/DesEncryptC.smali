.class public Lcom/android/utils/security/DesEncryptC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/security/IEncrypt;


# static fields
.field private static final E:[I

.field private static final IP:[I

.field private static final IP_1:[I

.field private static final LeftMove:[I

.field private static final P:[I

.field private static final PC_1:[I

.field private static final PC_2:[I

.field private static final S_Box:[[[I


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/utils/security/DesEncryptC;->IP:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->IP_1:[I

    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->PC_1:[I

    const/16 v0, 0x30

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/utils/security/DesEncryptC;->PC_2:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->E:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->P:[I

    const/16 v0, 0x8

    new-array v0, v0, [[[I

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/16 v3, 0x10

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/4 v8, 0x3

    aput-object v4, v2, v8

    aput-object v2, v0, v5

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v8

    aput-object v2, v0, v6

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v8

    aput-object v2, v0, v7

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v8

    aput-object v2, v0, v8

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v8

    aput-object v2, v0, v1

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    aput-object v4, v2, v8

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    aput-object v4, v2, v8

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v1, v8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->S_Box:[[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/utils/security/DesEncryptC;->LeftMove:[I

    return-void

    :array_0
    .array-data 4
        0x3a
        0x32
        0x2a
        0x22
        0x1a
        0x12
        0xa
        0x2
        0x3c
        0x34
        0x2c
        0x24
        0x1c
        0x14
        0xc
        0x4
        0x3e
        0x36
        0x2e
        0x26
        0x1e
        0x16
        0xe
        0x6
        0x40
        0x38
        0x30
        0x28
        0x20
        0x18
        0x10
        0x8
        0x39
        0x31
        0x29
        0x21
        0x19
        0x11
        0x9
        0x1
        0x3b
        0x33
        0x2b
        0x23
        0x1b
        0x13
        0xb
        0x3
        0x3d
        0x35
        0x2d
        0x25
        0x1d
        0x15
        0xd
        0x5
        0x3f
        0x37
        0x2f
        0x27
        0x1f
        0x17
        0xf
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x8
        0x30
        0x10
        0x38
        0x18
        0x40
        0x20
        0x27
        0x7
        0x2f
        0xf
        0x37
        0x17
        0x3f
        0x1f
        0x26
        0x6
        0x2e
        0xe
        0x36
        0x16
        0x3e
        0x1e
        0x25
        0x5
        0x2d
        0xd
        0x35
        0x15
        0x3d
        0x1d
        0x24
        0x4
        0x2c
        0xc
        0x34
        0x14
        0x3c
        0x1c
        0x23
        0x3
        0x2b
        0xb
        0x33
        0x13
        0x3b
        0x1b
        0x22
        0x2
        0x2a
        0xa
        0x32
        0x12
        0x3a
        0x1a
        0x21
        0x1
        0x29
        0x9
        0x31
        0x11
        0x39
        0x19
    .end array-data

    :array_2
    .array-data 4
        0x39
        0x31
        0x29
        0x21
        0x19
        0x11
        0x9
        0x1
        0x3a
        0x32
        0x2a
        0x22
        0x1a
        0x12
        0xa
        0x2
        0x3b
        0x33
        0x2b
        0x23
        0x1b
        0x13
        0xb
        0x3
        0x3c
        0x34
        0x2c
        0x24
        0x3f
        0x37
        0x2f
        0x27
        0x1f
        0x17
        0xf
        0x7
        0x3e
        0x36
        0x2e
        0x26
        0x1e
        0x16
        0xe
        0x6
        0x3d
        0x35
        0x2d
        0x25
        0x1d
        0x15
        0xd
        0x5
        0x1c
        0x14
        0xc
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe
        0x11
        0xb
        0x18
        0x1
        0x5
        0x3
        0x1c
        0xf
        0x6
        0x15
        0xa
        0x17
        0x13
        0xc
        0x4
        0x1a
        0x8
        0x10
        0x7
        0x1b
        0x14
        0xd
        0x2
        0x29
        0x34
        0x1f
        0x25
        0x2f
        0x37
        0x1e
        0x28
        0x33
        0x2d
        0x21
        0x30
        0x2c
        0x31
        0x27
        0x38
        0x22
        0x35
        0x2e
        0x2a
        0x32
        0x24
        0x1d
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x10
        0x7
        0x14
        0x15
        0x1d
        0xc
        0x1c
        0x11
        0x1
        0xf
        0x17
        0x1a
        0x5
        0x12
        0x1f
        0xa
        0x2
        0x8
        0x18
        0xe
        0x20
        0x1b
        0x3
        0x9
        0x13
        0xd
        0x1e
        0x6
        0x16
        0xb
        0x4
        0x19
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x4
        0xd
        0x1
        0x2
        0xf
        0xb
        0x8
        0x3
        0xa
        0x6
        0xc
        0x5
        0x9
        0x0
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x0
        0xf
        0x7
        0x4
        0xe
        0x2
        0xd
        0x1
        0xa
        0x6
        0xc
        0xb
        0x9
        0x5
        0x3
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x1
        0xe
        0x8
        0xd
        0x6
        0x2
        0xb
        0xf
        0xc
        0x9
        0x7
        0x3
        0xa
        0x5
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xf
        0xc
        0x8
        0x2
        0x4
        0x9
        0x1
        0x7
        0x5
        0xb
        0x3
        0xe
        0xa
        0x0
        0x6
        0xd
    .end array-data

    :array_a
    .array-data 4
        0xf
        0x1
        0x8
        0xe
        0x6
        0xb
        0x3
        0x4
        0x9
        0x7
        0x2
        0xd
        0xc
        0x0
        0x5
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x3
        0xd
        0x4
        0x7
        0xf
        0x2
        0x8
        0xe
        0xc
        0x0
        0x1
        0xa
        0x6
        0x9
        0xb
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x0
        0xe
        0x7
        0xb
        0xa
        0x4
        0xd
        0x1
        0x5
        0x8
        0xc
        0x6
        0x9
        0x3
        0x2
        0xf
    .end array-data

    :array_d
    .array-data 4
        0xd
        0x8
        0xa
        0x1
        0x3
        0xf
        0x4
        0x2
        0xb
        0x6
        0x7
        0xc
        0x0
        0x5
        0xe
        0x9
    .end array-data

    :array_e
    .array-data 4
        0xa
        0x0
        0x9
        0xe
        0x6
        0x3
        0xf
        0x5
        0x1
        0xd
        0xc
        0x7
        0xb
        0x4
        0x2
        0x8
    .end array-data

    :array_f
    .array-data 4
        0xd
        0x7
        0x0
        0x9
        0x3
        0x4
        0x6
        0xa
        0x2
        0x8
        0x5
        0xe
        0xc
        0xb
        0xf
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x6
        0x4
        0x9
        0x8
        0xf
        0x3
        0x0
        0xb
        0x1
        0x2
        0xc
        0x5
        0xa
        0xe
        0x7
    .end array-data

    :array_11
    .array-data 4
        0x1
        0xa
        0xd
        0x0
        0x6
        0x9
        0x8
        0x7
        0x4
        0xf
        0xe
        0x3
        0xb
        0x5
        0x2
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x7
        0xd
        0xe
        0x3
        0x0
        0x6
        0x9
        0xa
        0x1
        0x2
        0x8
        0x5
        0xb
        0xc
        0x4
        0xf
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x8
        0xb
        0x5
        0x6
        0xf
        0x0
        0x3
        0x4
        0x7
        0x2
        0xc
        0x1
        0xa
        0xe
        0x9
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x6
        0x9
        0x0
        0xc
        0xb
        0x7
        0xd
        0xf
        0x1
        0x3
        0xe
        0x5
        0x2
        0x8
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x3
        0xf
        0x0
        0x6
        0xa
        0x1
        0xd
        0x8
        0x9
        0x4
        0x5
        0xb
        0xc
        0x7
        0x2
        0xe
    .end array-data

    :array_16
    .array-data 4
        0x2
        0xc
        0x4
        0x1
        0x7
        0xa
        0xb
        0x6
        0x8
        0x5
        0x3
        0xf
        0xd
        0x0
        0xe
        0x9
    .end array-data

    :array_17
    .array-data 4
        0xe
        0xb
        0x2
        0xc
        0x4
        0x7
        0xd
        0x1
        0x5
        0x0
        0xf
        0xa
        0x3
        0x9
        0x8
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x2
        0x1
        0xb
        0xa
        0xd
        0x7
        0x8
        0xf
        0x9
        0xc
        0x5
        0x6
        0x3
        0x0
        0xe
    .end array-data

    :array_19
    .array-data 4
        0xb
        0x8
        0xc
        0x7
        0x1
        0xe
        0x2
        0xd
        0x6
        0xf
        0x0
        0x9
        0xa
        0x4
        0x5
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0xc
        0x1
        0xa
        0xf
        0x9
        0x2
        0x6
        0x8
        0x0
        0xd
        0x3
        0x4
        0xe
        0x7
        0x5
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0xf
        0x4
        0x2
        0x7
        0xc
        0x9
        0x5
        0x6
        0x1
        0xd
        0xe
        0x0
        0xb
        0x3
        0x8
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0xe
        0xf
        0x5
        0x2
        0x8
        0xc
        0x3
        0x7
        0x0
        0x4
        0xa
        0x1
        0xd
        0xb
        0x6
    .end array-data

    :array_1d
    .array-data 4
        0x4
        0x3
        0x2
        0xc
        0x9
        0x5
        0xf
        0xa
        0xb
        0xe
        0x1
        0x7
        0x6
        0x0
        0x8
        0xd
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0xb
        0x2
        0xe
        0xf
        0x0
        0x8
        0xd
        0x3
        0xc
        0x9
        0x7
        0x5
        0xa
        0x6
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0xd
        0x0
        0xb
        0x7
        0x4
        0x9
        0x1
        0xa
        0xe
        0x3
        0x5
        0xc
        0x2
        0xf
        0x8
        0x6
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x4
        0xb
        0xd
        0xc
        0x3
        0x7
        0xe
        0xa
        0xf
        0x6
        0x8
        0x0
        0x5
        0x9
        0x2
    .end array-data

    :array_21
    .array-data 4
        0x6
        0xb
        0xd
        0x8
        0x1
        0x4
        0xa
        0x7
        0x9
        0x5
        0x0
        0xf
        0xe
        0x2
        0x3
        0xc
    .end array-data

    :array_22
    .array-data 4
        0xd
        0x2
        0x8
        0x4
        0x6
        0xf
        0xb
        0x1
        0xa
        0x9
        0x3
        0xe
        0x5
        0x0
        0xc
        0x7
    .end array-data

    :array_23
    .array-data 4
        0x1
        0xf
        0xd
        0x8
        0xa
        0x3
        0x7
        0x4
        0xc
        0x5
        0x6
        0xb
        0x0
        0xe
        0x9
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x7
        0xb
        0x4
        0x1
        0x9
        0xc
        0xe
        0x2
        0x0
        0x6
        0xa
        0xd
        0xf
        0x3
        0x5
        0x8
    .end array-data

    :array_25
    .array-data 4
        0x2
        0x1
        0xe
        0x7
        0x4
        0xa
        0x8
        0xd
        0xf
        0xc
        0x9
        0x0
        0x3
        0x5
        0x6
        0xb
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/security/DesEncryptC;->key:Ljava/lang/String;

    return-void
.end method

.method private ByteDataFormat([B)[B
    .locals 10

    array-length v6, p1

    rem-int/lit8 v0, v6, 0x8

    rsub-int/lit8 v7, v0, 0x8

    add-int v8, v6, v7

    new-array v9, v8, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/security/DesEncryptC;->arraycopy([BI[BII)V

    :goto_0
    if-ge v6, v8, :cond_0

    int-to-byte p1, v7

    aput-byte p1, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method

.method private DesEncrypt([B[BI)[B
    .locals 16

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/utils/security/DesEncryptC;->ByteDataFormat([B)[B

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lcom/android/utils/security/DesEncryptC;->ByteDataFormat([B)[B

    move-result-object v8

    array-length v0, v8

    div-int/lit8 v9, v0, 0x8

    new-array v10, v0, [B

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_0

    const/16 v0, 0x8

    new-array v12, v0, [B

    new-array v13, v0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/security/DesEncryptC;->arraycopy([BI[BII)V

    mul-int/lit8 v14, v11, 0x8

    move-object v1, v8

    move v2, v14

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/security/DesEncryptC;->arraycopy([BI[BII)V

    move/from16 v15, p3

    invoke-direct {v6, v12, v13, v15}, Lcom/android/utils/security/DesEncryptC;->UnitDes([B[BI)[B

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v10

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/security/DesEncryptC;->arraycopy([BI[BII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method private Encrypt([II[[I)[B
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/16 v1, 0x40

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_0

    sget-object v7, Lcom/android/utils/security/DesEncryptC;->IP:[I

    aget v7, v7, v5

    sub-int/2addr v7, v6

    aget v6, p1, v7

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne p2, v6, :cond_1

    const/4 p1, 0x0

    :goto_1
    const/16 v5, 0x10

    if-ge p1, v5, :cond_2

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/utils/security/DesEncryptC;->LoopF([III[[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const/16 p1, 0xf

    :goto_2
    const/4 v5, -0x1

    if-le p1, v5, :cond_2

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/utils/security/DesEncryptC;->LoopF([III[[I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v1, :cond_3

    sget-object p1, Lcom/android/utils/security/DesEncryptC;->IP_1:[I

    aget p1, p1, v4

    sub-int/2addr p1, v6

    aget p1, v2, p1

    aput p1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/android/utils/security/DesEncryptC;->GetEncryptResultOfByteArray([I[B)V

    return-object v0
.end method

.method private GetEncryptResultOfByteArray([I[B)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-byte v4, p2, v1

    shl-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    aget v5, p1, v5

    rsub-int/lit8 v6, v3, 0x7

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, v2, :cond_3

    aget-byte p1, p2, v0

    rem-int/lit16 p1, p1, 0x100

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    aget-byte p1, p2, v0

    const/16 v1, 0x80

    if-le p1, v1, :cond_2

    aget-byte p1, p2, v0

    add-int/lit16 p1, p1, -0xff

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private KeyInitialize([I[[I)V
    .locals 5

    const/16 v0, 0x38

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Lcom/android/utils/security/DesEncryptC;->PC_1:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x10

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/android/utils/security/DesEncryptC;->LeftMove:[I

    aget v0, v0, p1

    invoke-direct {p0, v1, v0}, Lcom/android/utils/security/DesEncryptC;->LeftBitMove([II)V

    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x30

    if-ge v0, v3, :cond_1

    aget-object v3, p2, p1

    sget-object v4, Lcom/android/utils/security/DesEncryptC;->PC_2:[I

    aget v4, v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v4, v1, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private LeftBitMove([II)V
    .locals 10

    const/16 v0, 0x1c

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    aget v7, p1, v6

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1c

    aget v7, p1, v7

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x1b

    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v6, :cond_1

    add-int/lit8 v7, p2, 0x1

    aget v8, v1, v7

    aput v8, v3, p2

    aget v8, v2, v7

    aput v8, v4, p2

    move p2, v7

    goto :goto_1

    :cond_1
    aget p2, v1, v5

    aput p2, v3, v6

    aget p2, v2, v5

    aput p2, v4, v6

    goto :goto_3

    :cond_2
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4

    const/4 p2, 0x0

    :goto_2
    const/16 v8, 0x1a

    if-ge p2, v8, :cond_3

    add-int/lit8 v8, p2, 0x2

    aget v9, v1, v8

    aput v9, v3, p2

    aget v8, v2, v8

    aput v8, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    aget p2, v1, v5

    aput p2, v3, v8

    aget p2, v2, v5

    aput p2, v4, v8

    aget p2, v1, v7

    aput p2, v3, v6

    aget p2, v2, v7

    aput p2, v4, v6

    :cond_4
    :goto_3
    if-ge v5, v0, :cond_5

    aget p2, v3, v5

    aput p2, p1, v5

    add-int/lit8 p2, v5, 0x1c

    aget v1, v4, v5

    aput v1, p1, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private LoopF([III[[I)V
    .locals 20

    move/from16 v0, p2

    move/from16 v1, p3

    const/16 v2, 0x20

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    const/16 v7, 0x30

    new-array v8, v7, [I

    const/4 v9, 0x2

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    const-class v11, I

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    const/16 v11, 0x8

    new-array v12, v11, [I

    new-array v13, v2, [I

    new-array v14, v2, [I

    const/4 v15, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_0

    aget v16, p1, v11

    aput v16, v3, v11

    add-int/lit8 v16, v11, 0x20

    aget v16, p1, v16

    aput v16, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/4 v2, 0x1

    if-ge v11, v7, :cond_2

    sget-object v17, Lcom/android/utils/security/DesEncryptC;->E:[I

    aget v17, v17, v11

    add-int/lit8 v17, v17, -0x1

    aget v2, v4, v17

    aput v2, v8, v11

    aget v2, v8, v11

    aget-object v17, p4, v0

    aget v17, v17, v11

    add-int v2, v2, v17

    aput v2, v8, v11

    aget v2, v8, v11

    if-ne v2, v9, :cond_1

    aput v15, v8, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/16 v11, 0x8

    :goto_2
    if-ge v7, v11, :cond_5

    const/4 v11, 0x0

    :goto_3
    const/4 v9, 0x6

    if-ge v11, v9, :cond_3

    aget-object v9, v10, v7

    mul-int/lit8 v18, v7, 0x6

    add-int v18, v18, v11

    aget v18, v8, v18

    aput v18, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    sget-object v9, Lcom/android/utils/security/DesEncryptC;->S_Box:[[[I

    aget-object v9, v9, v7

    aget-object v11, v10, v7

    aget v11, v11, v15

    shl-int/2addr v11, v2

    aget-object v18, v10, v7

    const/16 v19, 0x5

    aget v18, v18, v19

    add-int v11, v11, v18

    aget-object v9, v9, v11

    aget-object v11, v10, v7

    aget v11, v11, v2

    const/16 v18, 0x3

    shl-int/lit8 v11, v11, 0x3

    aget-object v19, v10, v7

    const/16 v17, 0x2

    aget v19, v19, v17

    shl-int/lit8 v19, v19, 0x2

    add-int v11, v11, v19

    aget-object v19, v10, v7

    aget v19, v19, v18

    shl-int/lit8 v19, v19, 0x1

    add-int v11, v11, v19

    aget-object v19, v10, v7

    const/4 v15, 0x4

    aget v19, v19, v15

    add-int v11, v11, v19

    aget v9, v9, v11

    aput v9, v12, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v15, :cond_4

    mul-int/lit8 v11, v7, 0x4

    add-int/lit8 v11, v11, 0x3

    sub-int/2addr v11, v9

    aget v19, v12, v7

    const/16 v17, 0x2

    rem-int/lit8 v19, v19, 0x2

    aput v19, v13, v11

    aget v11, v12, v7

    div-int/lit8 v11, v11, 0x2

    aput v11, v12, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x2

    const/16 v11, 0x8

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    const/16 v8, 0x20

    :goto_5
    if-ge v7, v8, :cond_a

    sget-object v9, Lcom/android/utils/security/DesEncryptC;->P:[I

    aget v9, v9, v7

    sub-int/2addr v9, v2

    aget v9, v13, v9

    aput v9, v14, v7

    aget v9, v4, v7

    aput v9, v5, v7

    aget v9, v3, v7

    aget v10, v14, v7

    add-int/2addr v9, v10

    aput v9, v6, v7

    aget v9, v6, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x0

    aput v9, v6, v7

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    if-ne v1, v2, :cond_9

    const/16 v11, 0xf

    if-ne v0, v11, :cond_9

    :cond_8
    aget v11, v6, v7

    aput v11, p1, v7

    add-int/lit8 v11, v7, 0x20

    aget v12, v5, v7

    aput v12, p1, v11

    goto :goto_7

    :cond_9
    aget v11, v5, v7

    aput v11, p1, v7

    add-int/lit8 v11, v7, 0x20

    aget v12, v6, v7

    aput v12, p1, v11

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x8
        0x6
    .end array-data
.end method

.method private ReadDataToBirnaryIntArray([B)[I
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-byte v4, p1, v3

    aput v4, v1, v3

    aget v4, v1, v3

    if-gez v4, :cond_0

    aget v4, v1, v3

    add-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    aget v4, v1, v3

    rem-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    new-array p1, p1, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    mul-int/lit8 v5, v3, 0x8

    add-int/lit8 v5, v5, 0x7

    sub-int/2addr v5, v4

    aget v6, v1, v3

    rem-int/lit8 v6, v6, 0x2

    aput v6, p1, v5

    aget v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    aput v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private UnitDes([B[BI)[B
    .locals 2

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    invoke-direct {p0, p1}, Lcom/android/utils/security/DesEncryptC;->ReadDataToBirnaryIntArray([B)[I

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/utils/security/DesEncryptC;->ReadDataToBirnaryIntArray([B)[I

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/utils/security/DesEncryptC;->KeyInitialize([I[[I)V

    invoke-direct {p0, p2, p3, v0}, Lcom/android/utils/security/DesEncryptC;->Encrypt([II[[I)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data Format Error !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x10
        0x30
    .end array-data
.end method

.method private arraycopy([BI[BII)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    new-array v0, p5, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_0

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p5, :cond_1

    add-int p1, p4, v1

    aget-byte p2, v0, v1

    aput-byte p2, p3, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private decrypt_des([B)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/utils/security/DesEncryptC;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/utils/security/DesEncryptC;->DesEncrypt([B[BI)[B

    move-result-object v3

    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-array p1, v7, [B

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/utils/security/DesEncryptC;->arraycopy([BI[BII)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/security/DesEncryptC;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/utils/security/DesEncryptC;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_2
    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    array-length v2, p2

    rem-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    invoke-direct {p0, p1, p2, v3}, Lcom/android/utils/security/DesEncryptC;->DesEncrypt([B[BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aoratec201005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lcom/android/utils/security/DesEncryptC;

    invoke-direct {p0, v1}, Lcom/android/utils/security/DesEncryptC;-><init>(Ljava/lang/String;)V

    const-string v0, "1234561111\u4e2d\u6587\u54c8\u54c8\u600e\u4e48\u56de\u4e8b\u554a\uff01\uff01\uff01\uff01\uff01\uff01abcede@@@@"

    invoke-direct {p0, v0}, Lcom/android/utils/security/DesEncryptC;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/utils/security/DesEncryptC;->decrypt([B)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6700\u539f\u59cb\u6570\u636e\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u5bc6\u540e\u6570\u636e\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u5bc6\u540e\u6570\u636e:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u5b8c\u5168\u76f8\u540c\uff01"

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u7ed3\u5c3e\u4e0d\u540c\uff01"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/security/DesEncryptC;->decrypt_des([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/utils/security/DesEncryptC;->encrypt(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
