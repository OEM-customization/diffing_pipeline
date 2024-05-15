.class synthetic Lsun/security/provider/certpath/RevocationChecker$2;
.super Ljava/lang/Object;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

.field static final synthetic blacklist $SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 360
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker$Mode;->values()[Lsun/security/provider/certpath/RevocationChecker$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v2}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    sget-object v3, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v3}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v4}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$sun$security$provider$certpath$RevocationChecker$Mode:[I

    sget-object v5, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v5}, Lsun/security/provider/certpath/RevocationChecker$Mode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    .line 112
    :goto_3b
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    :try_start_44
    sget-object v5, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v5}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception v1

    :goto_4e
    :try_start_4e
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v4}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v0

    :goto_5a
    :try_start_5a
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v0

    :goto_66
    :try_start_66
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$2;->$SwitchMap$java$security$cert$PKIXRevocationChecker$Option:[I

    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker$Option;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    return-void
.end method
