.class public final enum Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
.super Ljava/lang/Enum;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/DigitallySigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist MD5:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist NONE:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist SHA1:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist SHA224:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist SHA256:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist SHA384:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum blacklist SHA512:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private static blacklist values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->NONE:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 35
    new-instance v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v3, "MD5"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->MD5:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 36
    new-instance v3, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v5, "SHA1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA1:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 37
    new-instance v5, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v7, "SHA224"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA224:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 38
    new-instance v7, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v9, "SHA256"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA256:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 39
    new-instance v9, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v11, "SHA384"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA384:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 40
    new-instance v11, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v13, "SHA512"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA512:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 33
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 42
    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values()[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .registers 5
    .param p0, "ord"    # I

    .line 45
    :try_start_0
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    aget-object v0, v0, p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 46
    :catch_5
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hash algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method
