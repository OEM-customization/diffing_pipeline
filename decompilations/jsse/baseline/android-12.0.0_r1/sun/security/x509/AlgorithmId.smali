.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final blacklist AES_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DH_PKIX_data:[I

.field public static final blacklist DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DH_data:[I

.field public static final blacklist DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DSA_OIW_data:[I

.field public static final blacklist DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DSA_PKIX_data:[I

.field public static final greylist DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist ECDH_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o RSAEncryption_data:[I

.field public static final greylist RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o RSA_data:[I

.field public static final blacklist RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SHA224_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o dsaWithSHA1_PKIX_data:[I

.field private static greylist-max-o initOidTableVersion:I = 0x0

.field private static final greylist-max-o md2WithRSAEncryption_data:[I

.field public static final blacklist md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o md5WithRSAEncryption_data:[I

.field public static final blacklist md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static blacklist pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static blacklist pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final blacklist pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final whitelist serialVersionUID:J = 0x640067c6d62263e5L

.field private static final greylist-max-o sha1WithDSA_OIW_data:[I

.field public static final blacklist sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha1WithRSAEncryption_OIW_data:[I

.field public static final blacklist sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha1WithRSAEncryption_data:[I

.field public static final greylist sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha224WithRSAEncryption_data:[I

.field public static final blacklist sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha256WithRSAEncryption_data:[I

.field public static final blacklist sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha384WithRSAEncryption_data:[I

.field public static final blacklist sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha512WithRSAEncryption_data:[I

.field public static final blacklist sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o shaWithDSA_OIW_data:[I

.field public static final blacklist shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private greylist-max-o algParams:Ljava/security/AlgorithmParameters;

.field private greylist-max-o algid:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o constructedFromDer:Z

.field protected greylist params:Lsun/security/util/DerValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 41

    .line 661
    const/4 v0, -0x1

    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 662
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    .line 678
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_342

    .line 679
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    .line 685
    new-array v3, v1, [I

    fill-array-data v3, :array_352

    .line 686
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    .line 694
    new-array v4, v1, [I

    fill-array-data v4, :array_362

    .line 695
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    .line 697
    const/16 v5, 0x9

    new-array v6, v5, [I

    fill-array-data v6, :array_372

    .line 698
    invoke-static {v6}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    .line 700
    new-array v7, v5, [I

    fill-array-data v7, :array_388

    .line 701
    invoke-static {v7}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    .line 703
    new-array v8, v5, [I

    fill-array-data v8, :array_39e

    .line 704
    invoke-static {v8}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    .line 706
    new-array v9, v5, [I

    fill-array-data v9, :array_3b4

    .line 707
    invoke-static {v9}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    .line 712
    const/4 v10, 0x7

    new-array v11, v10, [I

    fill-array-data v11, :array_3ca

    sput-object v11, Lsun/security/x509/AlgorithmId;->DH_data:[I

    .line 713
    new-array v12, v1, [I

    fill-array-data v12, :array_3dc

    sput-object v12, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    .line 714
    new-array v13, v1, [I

    fill-array-data v13, :array_3ec

    sput-object v13, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    .line 715
    new-array v14, v1, [I

    fill-array-data v14, :array_3fc

    sput-object v14, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    .line 716
    const/4 v15, 0x5

    new-array v5, v15, [I

    fill-array-data v5, :array_40c

    sput-object v5, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    .line 717
    new-array v15, v10, [I

    fill-array-data v15, :array_41a

    sput-object v15, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    .line 724
    new-array v10, v1, [I

    fill-array-data v10, :array_42c

    invoke-static {v10}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 725
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_43c

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    .line 732
    move-object/from16 v17, v1

    const/16 v1, 0x8

    move-object/from16 v20, v10

    new-array v10, v1, [I

    fill-array-data v10, :array_44a

    .line 733
    invoke-static {v10}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    .line 738
    move-object/from16 v22, v10

    const/4 v1, 0x7

    new-array v10, v1, [I

    fill-array-data v10, :array_45e

    sput-object v10, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 740
    move-object/from16 v23, v9

    new-array v9, v1, [I

    fill-array-data v9, :array_470

    sput-object v9, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 742
    move-object/from16 v24, v8

    new-array v8, v1, [I

    fill-array-data v8, :array_482

    sput-object v8, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 744
    move-object/from16 v25, v7

    const/4 v1, 0x6

    new-array v7, v1, [I

    fill-array-data v7, :array_494

    sput-object v7, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 746
    move-object/from16 v26, v6

    const/4 v1, 0x7

    new-array v6, v1, [I

    fill-array-data v6, :array_4a4

    sput-object v6, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    .line 748
    move-object/from16 v27, v4

    new-array v4, v1, [I

    fill-array-data v4, :array_4b6

    sput-object v4, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 750
    move-object/from16 v28, v2

    new-array v2, v1, [I

    fill-array-data v2, :array_4c8

    sput-object v2, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 752
    move-object/from16 v29, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_4da

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 754
    move-object/from16 v30, v3

    const/4 v1, 0x6

    new-array v3, v1, [I

    fill-array-data v3, :array_4ec

    sput-object v3, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    .line 756
    move-object/from16 v31, v3

    new-array v3, v1, [I

    fill-array-data v3, :array_4fc

    sput-object v3, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    .line 758
    move-object/from16 v32, v3

    new-array v3, v1, [I

    fill-array-data v3, :array_50c

    sput-object v3, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    .line 772
    move-object/from16 v16, v3

    const/16 v1, 0x9

    new-array v3, v1, [I

    fill-array-data v3, :array_51c

    .line 773
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 774
    new-array v1, v1, [I

    fill-array-data v1, :array_532

    .line 775
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 777
    move-object/from16 v33, v1

    move-object/from16 v34, v3

    const/4 v1, 0x6

    new-array v3, v1, [I

    fill-array-data v3, :array_548

    .line 778
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 779
    move-object/from16 v35, v1

    const/4 v3, 0x7

    new-array v1, v3, [I

    fill-array-data v1, :array_558

    .line 780
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 781
    move-object/from16 v36, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_56a

    .line 782
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 783
    move-object/from16 v37, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_57c

    .line 784
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 785
    move-object/from16 v38, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_58e

    .line 786
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 787
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5a0

    .line 788
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 794
    move-object/from16 v18, v1

    const/4 v3, 0x7

    new-array v1, v3, [I

    fill-array-data v1, :array_5b0

    .line 795
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 796
    move-object/from16 v19, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5c2

    .line 797
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 798
    move-object/from16 v39, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5d4

    .line 799
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 800
    new-array v3, v3, [I

    fill-array-data v3, :array_5e6

    .line 801
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 802
    move-object/from16 v21, v1

    move-object/from16 v40, v3

    const/16 v3, 0x8

    new-array v1, v3, [I

    fill-array-data v1, :array_5f8

    .line 803
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    .line 804
    new-array v1, v3, [I

    fill-array-data v1, :array_60c

    .line 805
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    .line 821
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    .line 828
    invoke-static {v12}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    .line 838
    invoke-static {v13}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v11

    sput-object v11, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 847
    invoke-static {v14}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v12

    sput-object v12, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 855
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 862
    invoke-static {v15}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 870
    nop

    .line 871
    invoke-static {v10}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 878
    nop

    .line 879
    invoke-static {v9}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 886
    nop

    .line 887
    invoke-static {v8}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 894
    nop

    .line 895
    invoke-static {v7}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 902
    nop

    .line 903
    invoke-static {v6}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 910
    nop

    .line 911
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 918
    nop

    .line 919
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 926
    nop

    .line 927
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 935
    invoke-static/range {v31 .. v31}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 942
    invoke-static/range {v32 .. v32}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 949
    move-object/from16 v31, v0

    invoke-static/range {v16 .. v16}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 953
    move-object/from16 v16, v2

    const-string v2, "MD5"

    move-object/from16 v32, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v6

    move-object/from16 v6, v30

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v2, "MD2"

    move-object/from16 v6, v28

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v2, "SHA-1"

    move-object/from16 v6, v27

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v2, "SHA-224"

    move-object/from16 v6, v26

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string v2, "SHA-256"

    move-object/from16 v6, v25

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v2, "SHA-384"

    move-object/from16 v6, v24

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v2, "SHA-512"

    move-object/from16 v6, v23

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v2, "RSA"

    invoke-interface {v4, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v2, "Diffie-Hellman"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v1, "DSA"

    invoke-interface {v4, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v1, "EC"

    move-object/from16 v2, v20

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v1, "ECDH"

    move-object/from16 v2, v17

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v1, "AES"

    move-object/from16 v2, v22

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v1, "SHA1withECDSA"

    move-object/from16 v2, v35

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v1, "SHA224withECDSA"

    move-object/from16 v2, v36

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v1, "SHA256withECDSA"

    move-object/from16 v2, v37

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string v1, "SHA384withECDSA"

    move-object/from16 v2, v38

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string v1, "SHA512withECDSA"

    move-object/from16 v2, v18

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string v1, "MD5withRSA"

    invoke-interface {v4, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string v1, "MD2withRSA"

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const-string v1, "SHA1withDSA"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    invoke-interface {v4, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-interface {v4, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v0, "SHA224withDSA"

    move-object/from16 v1, v34

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v0, "SHA256withDSA"

    move-object/from16 v1, v33

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v0, "SHA1withRSA"

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v0, "SHA224withRSA"

    move-object/from16 v1, v29

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v0, "SHA256withRSA"

    move-object/from16 v1, v32

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v0, "SHA384withRSA"

    move-object/from16 v1, v16

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v0, "SHA512withRSA"

    move-object/from16 v1, v31

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v0, "PBEWithMD5AndDES"

    move-object/from16 v1, v19

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v0, "PBEWithMD5AndRC2"

    move-object/from16 v1, v39

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v0, "PBEWithSHA1AndDES"

    move-object/from16 v1, v21

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v0, "PBEWithSHA1AndRC2"

    move-object/from16 v1, v40

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    const-string v1, "PBEWithSHA1AndDESede"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    const-string v1, "PBEWithSHA1AndRC2_40"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    return-void

    :array_342
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    :array_352
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    :array_362
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    :array_372
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_388
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_39e
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_3b4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_3ca
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    :array_3dc
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    :array_3ec
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    :array_3fc
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    :array_40c
    .array-data 4
        0x2
        0x5
        0x8
        0x1
        0x1
    .end array-data

    :array_41a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    :array_42c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    :array_43c
    .array-data 4
        0x1
        0x3
        0x84
        0x1
        0xc
    .end array-data

    :array_44a
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x1
    .end array-data

    :array_45e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    :array_470
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    :array_482
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    :array_494
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    :array_4a4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xe
    .end array-data

    :array_4b6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    :array_4c8
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    :array_4da
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    :array_4ec
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    :array_4fc
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    :array_50c
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    :array_51c
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_532
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_548
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    :array_558
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    :array_56a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    :array_57c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    :array_58e
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    :array_5a0
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    :array_5b0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    :array_5c2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    :array_5d4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    :array_5e6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    :array_5f8
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    :array_60c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 88
    return-void
.end method

.method public constructor greylist test-api <init>(Lsun/security/util/ObjectIdentifier;)V
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 96
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 97
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 106
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 107
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 109
    return-void
.end method

.method private constructor greylist-max-o <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 113
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 114
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 115
    if-eqz p2, :cond_f

    .line 116
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    .line 118
    :cond_f
    return-void
.end method

.method private static greylist-max-o algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 469
    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 470
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const-string v1, "OID."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 472
    :cond_21
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 477
    :cond_27
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 478
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 480
    :cond_32
    const-string v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 481
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 483
    :cond_3d
    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1df

    const-string v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1df

    const-string v0, "SHA-1"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto/16 :goto_1df

    .line 487
    :cond_57
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1dc

    const-string v0, "SHA256"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto/16 :goto_1dc

    .line 491
    :cond_69
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d9

    const-string v0, "SHA384"

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto/16 :goto_1d9

    .line 495
    :cond_7b
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d6

    const-string v0, "SHA512"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    goto/16 :goto_1d6

    .line 499
    :cond_8d
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d3

    const-string v0, "SHA224"

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto/16 :goto_1d3

    .line 505
    :cond_9f
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 506
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 508
    :cond_aa
    const-string v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d0

    const-string v0, "DH"

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto/16 :goto_1d0

    .line 512
    :cond_bc
    const-string v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 513
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 515
    :cond_c7
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 516
    sget-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 518
    :cond_d2
    const-string v0, "ECDH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 519
    sget-object v0, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 523
    :cond_dd
    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 524
    sget-object v0, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 528
    :cond_e8
    const-string v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cd

    const-string v0, "MD5/RSA"

    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto/16 :goto_1cd

    .line 532
    :cond_fa
    const-string v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ca

    const-string v0, "MD2/RSA"

    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    goto/16 :goto_1ca

    .line 536
    :cond_10c
    const-string v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "SHA1withDSA"

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "SHA/DSA"

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "SHA1/DSA"

    .line 539
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "DSAWithSHA1"

    .line 540
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "DSS"

    .line 541
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "SHA-1/DSA"

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    goto/16 :goto_1c7

    .line 545
    :cond_146
    const-string v0, "SHA224WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 546
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 548
    :cond_151
    const-string v0, "SHA256WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 549
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 551
    :cond_15c
    const-string v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c4

    const-string v0, "SHA1/RSA"

    .line 552
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    goto :goto_1c4

    .line 555
    :cond_16d
    const-string v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c1

    const-string v0, "ECDSA"

    .line 556
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_1c1

    .line 559
    :cond_17e
    const-string v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 560
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 562
    :cond_189
    const-string v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 563
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 565
    :cond_194
    const-string v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 566
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 568
    :cond_19f
    const-string v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 569
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 575
    :cond_1aa
    sget-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v0

    .line 576
    :try_start_1ad
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 577
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/ObjectIdentifier;

    monitor-exit v0

    return-object v1

    .line 578
    :catchall_1be
    move-exception v1

    monitor-exit v0
    :try_end_1c0
    .catchall {:try_start_1ad .. :try_end_1c0} :catchall_1be

    throw v1

    .line 557
    :cond_1c1
    :goto_1c1
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 553
    :cond_1c4
    :goto_1c4
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 543
    :cond_1c7
    :goto_1c7
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 534
    :cond_1ca
    :goto_1ca
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 530
    :cond_1cd
    :goto_1cd
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 510
    :cond_1d0
    :goto_1d0
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 501
    :cond_1d3
    :goto_1d3
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 497
    :cond_1d6
    :goto_1d6
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 493
    :cond_1d9
    :goto_1d9
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 489
    :cond_1dc
    :goto_1dc
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 485
    :cond_1df
    :goto_1df
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public static greylist get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .registers 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 417
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_24

    .line 421
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    nop

    .line 423
    if-eqz v0, :cond_d

    .line 427
    new-instance v1, Lsun/security/x509/AlgorithmId;

    invoke-direct {v1, v0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-object v1

    .line 424
    :cond_d
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized algorithm name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    .end local v0    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_24
    move-exception v0

    .line 419
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ObjectIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .registers 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "algname":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_28

    .line 446
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    nop

    .line 447
    if-eqz v1, :cond_11

    .line 451
    new-instance v2, Lsun/security/x509/AlgorithmId;

    invoke-direct {v2, v1, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    return-object v2

    .line 448
    :cond_11
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized algorithm name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_28
    move-exception v1

    .line 444
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ObjectIdentifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .registers 2
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getDigAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .line 1035
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1036
    const-string v0, "WITH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1037
    .local v0, "with":I
    if-lez v0, :cond_14

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1040
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .line 1013
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1014
    const-string v0, "WITH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1015
    .local v0, "with":I
    const/4 v1, 0x0

    .line 1016
    .local v1, "keyAlgorithm":Ljava/lang/String;
    if-lez v0, :cond_30

    .line 1017
    add-int/lit8 v2, v0, 0x4

    const-string v3, "AND"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1018
    .local v2, "and":I
    if-lez v2, :cond_20

    .line 1019
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    .line 1021
    :cond_20
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1023
    :goto_26
    const-string v3, "ECDSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1024
    const-string v1, "EC"

    .line 1027
    .end local v2    # "and":I
    :cond_30
    return-object v1
.end method

.method public static blacklist makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .param p1, "encAlg"    # Ljava/lang/String;

    .line 1002
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1003
    const-string v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "ECDSA"

    .line 1005
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs blacklist oid([I)Lsun/security/util/ObjectIdentifier;
    .registers 2
    .param p0, "values"    # [I

    .line 657
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static greylist parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .registers 6
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_43

    .line 371
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 373
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 374
    .local v1, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_16

    .line 375
    const/4 v2, 0x0

    .local v2, "params":Lsun/security/util/DerValue;
    goto :goto_35

    .line 377
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_16
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 378
    .restart local v2    # "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2f

    .line 379
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 382
    const/4 v2, 0x0

    goto :goto_2f

    .line 380
    :cond_27
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_3b

    .line 389
    :goto_35
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v1, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    return-object v3

    .line 385
    :cond_3b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    .end local v0    # "in":Lsun/security/util/DerInputStream;
    .end local v1    # "algid":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "algid parse error, not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o reinitializeMappingTableLocked()V
    .registers 13

    .line 584
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v0

    .line 585
    .local v0, "currentVersion":I
    sget v1, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    if-eq v1, v0, :cond_c5

    .line 586
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 587
    .local v1, "provs":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_c3

    .line 588
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 589
    .local v3, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_16
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 590
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 591
    .local v4, "alias":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "upperCaseAlias":Ljava/lang/String;
    const-string v6, "ALG.ALIAS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 594
    const/4 v6, 0x0

    const-string v7, "OID."

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v8, v6

    .local v8, "index":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_7c

    .line 595
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v8, v6

    .line 596
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v8, v6, :cond_48

    .line 598
    goto/16 :goto_bf

    .line 600
    :cond_48
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "oidString":Ljava/lang/String;
    aget-object v7, v1, v2

    invoke-virtual {v7, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, "stdAlgName":Ljava/lang/String;
    if-eqz v7, :cond_7b

    .line 603
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 605
    const/4 v9, 0x0

    .line 607
    .local v9, "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_5b
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, v6}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_62

    move-object v9, v10

    .line 610
    goto :goto_63

    .line 608
    :catch_62
    move-exception v10

    .line 612
    :goto_63
    if-eqz v9, :cond_7b

    .line 613
    sget-object v10, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_70

    .line 614
    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_70
    sget-object v10, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7b

    .line 617
    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .end local v6    # "oidString":Ljava/lang/String;
    .end local v7    # "stdAlgName":Ljava/lang/String;
    .end local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_7b
    goto :goto_bd

    .line 624
    :cond_7c
    const/16 v6, 0x2e

    const-string v7, "ALG.ALIAS."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 625
    .local v6, "sep":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, "suffix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 629
    .restart local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_8f
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, v7}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_96

    move-object v9, v10

    .line 632
    goto :goto_97

    .line 630
    :catch_96
    move-exception v10

    .line 634
    :goto_97
    if-eqz v9, :cond_bd

    .line 635
    aget-object v10, v1, v2

    invoke-virtual {v10, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 636
    .local v10, "stdAlgName":Ljava/lang/String;
    if-eqz v10, :cond_bd

    .line 637
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 638
    sget-object v11, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b2

    .line 639
    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_b2
    sget-object v11, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bd

    .line 642
    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "upperCaseAlias":Ljava/lang/String;
    .end local v6    # "sep":I
    .end local v7    # "suffix":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v10    # "stdAlgName":Ljava/lang/String;
    :cond_bd
    :goto_bd
    goto/16 :goto_16

    .line 587
    .end local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_bf
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 651
    .end local v2    # "i":I
    :cond_c3
    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 654
    .end local v1    # "provs":[Ljava/security/Provider;
    :cond_c5
    return-void
.end method


# virtual methods
.method protected blacklist decodeParams()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "algidString":Ljava/lang/String;
    :try_start_6
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_17

    .line 131
    nop

    .line 134
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 135
    return-void

    .line 124
    :catch_17
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 130
    return-void
.end method

.method public greylist derEncode(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 158
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 162
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_26

    .line 163
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_23

    .line 164
    new-instance v3, Lsun/security/util/DerValue;

    invoke-virtual {v2}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    goto :goto_26

    .line 166
    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 169
    :cond_26
    :goto_26
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v2, :cond_2e

    .line 196
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    goto :goto_31

    .line 198
    :cond_2e
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 200
    :goto_31
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 201
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 202
    return-void
.end method

.method public final greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 145
    return-void
.end method

.method public final greylist-max-r encode()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 210
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 295
    if-ne p0, p1, :cond_4

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_4
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_10

    .line 299
    move-object v0, p1

    check-cast v0, Lsun/security/x509/AlgorithmId;

    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v0

    return v0

    .line 300
    :cond_10
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_1c

    .line 301
    move-object v0, p1

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    .line 303
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist equals(Lsun/security/util/ObjectIdentifier;)Z
    .registers 3
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .line 312
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist equals(Lsun/security/x509/AlgorithmId;)Z
    .registers 7
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    .line 283
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    iget-object v0, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_14

    :cond_c
    move v0, v2

    goto :goto_14

    :cond_e
    iget-object v3, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    .line 284
    .local v0, "paramsEqual":Z
    :goto_14
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    iget-object v4, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public greylist getEncodedParams()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public greylist test-api getName()Ljava/lang/String;
    .registers 5

    .line 237
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 239
    return-object v0

    .line 241
    :cond_d
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 243
    :try_start_1b
    new-instance v1, Lsun/security/util/DerValue;

    .line 244
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 245
    .local v1, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "paramsName":Ljava/lang/String;
    const-string v3, "EC"

    invoke-static {v2, v3}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_34

    move-object v0, v3

    .line 249
    .end local v1    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v2    # "paramsName":Ljava/lang/String;
    goto :goto_35

    .line 247
    :catch_34
    move-exception v1

    .line 254
    :cond_35
    :goto_35
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v1

    .line 255
    :try_start_38
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 256
    sget-object v2, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 257
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_52

    .line 260
    if-nez v0, :cond_50

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_50
    move-object v1, v0

    :goto_51
    return-object v1

    .line 257
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public final greylist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 222
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public greylist getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 264
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method protected blacklist paramsToString()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_7

    .line 333
    const-string v0, ""

    return-object v0

    .line 334
    :cond_7
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_10

    .line 335
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_10
    const-string v0, ", params unparsed"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
