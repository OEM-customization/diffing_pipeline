.class public final enum Lcom/android/okhttp/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o SSL_3_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_1:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_2:Lcom/android/okhttp/TlsVersion;


# instance fields
.field final greylist-max-o javaName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 27
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const-string v1, "TLS_1_2"

    const/4 v2, 0x0

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    .line 28
    new-instance v1, Lcom/android/okhttp/TlsVersion;

    const-string v3, "TLS_1_1"

    const/4 v4, 0x1

    const-string v5, "TLSv1.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    .line 29
    new-instance v3, Lcom/android/okhttp/TlsVersion;

    const-string v5, "TLS_1_0"

    const/4 v6, 0x2

    const-string v7, "TLSv1"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    .line 30
    new-instance v5, Lcom/android/okhttp/TlsVersion;

    const-string v7, "SSL_3_0"

    const/4 v8, 0x3

    const-string v9, "SSLv3"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    .line 26
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/okhttp/TlsVersion;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "javaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static greylist-max-o forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 4
    .param p0, "javaName"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    :cond_7
    goto :goto_30

    :sswitch_8
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :sswitch_12
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :sswitch_1c
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :sswitch_26
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_6a

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_4b
    sget-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 43
    :pswitch_4e
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 42
    :pswitch_51
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 41
    :pswitch_54
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    return-object v0

    nop

    :sswitch_data_58
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_26
        -0x1dfc3f26 -> :sswitch_1c
        0x4b88569 -> :sswitch_12
        0x4c38896 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/android/okhttp/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/TlsVersion;

    return-object v0
.end method

.method public static greylist-max-o values()[Lcom/android/okhttp/TlsVersion;
    .registers 1

    .line 26
    sget-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    invoke-virtual {v0}, [Lcom/android/okhttp/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o javaName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
