.class public final enum Lcom/android/org/conscrypt/metrics/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

.field public static final enum blacklist UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;


# instance fields
.field final blacklist id:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 29
    new-instance v0, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v1, "UNKNOWN_PROTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 30
    new-instance v1, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v3, "SSLv3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/Protocol;->SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 31
    new-instance v3, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v5, "TLSv1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 32
    new-instance v5, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v7, "TLSv1_1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 33
    new-instance v7, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v9, "TLSv1_2"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 34
    new-instance v9, Lcom/android/org/conscrypt/metrics/Protocol;

    const-string v11, "TLSv1_3"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/org/conscrypt/metrics/Protocol;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

    .line 27
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/org/conscrypt/metrics/Protocol;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/org/conscrypt/metrics/Protocol;->$VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/android/org/conscrypt/metrics/Protocol;->id:B

    .line 62
    return-void
.end method

.method public static blacklist forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_12
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_1c
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3b

    :sswitch_26
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_30
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_66

    .line 56
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->UNKNOWN_PROTO:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 54
    :pswitch_41
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_3:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 52
    :pswitch_44
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_2:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 50
    :pswitch_47
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1_1:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 48
    :pswitch_4a
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->TLSv1:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    .line 46
    :pswitch_4d
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->SSLv3:Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0

    :sswitch_data_50
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_30
        -0x1dfc3f26 -> :sswitch_26
        -0x1dfc3f25 -> :sswitch_1c
        0x4b88569 -> :sswitch_12
        0x4c38896 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/android/org/conscrypt/metrics/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/Protocol;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/org/conscrypt/metrics/Protocol;->$VALUES:[Lcom/android/org/conscrypt/metrics/Protocol;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/Protocol;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 40
    iget-byte v0, p0, Lcom/android/org/conscrypt/metrics/Protocol;->id:B

    return v0
.end method
