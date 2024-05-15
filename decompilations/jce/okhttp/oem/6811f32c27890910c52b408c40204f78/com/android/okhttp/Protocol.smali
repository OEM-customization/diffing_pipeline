.class public final enum Lcom/android/okhttp/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_1_0:Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_1_1:Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_2:Lcom/android/okhttp/Protocol;

.field public static final enum SPDY_3:Lcom/android/okhttp/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string/jumbo v1, "HTTP_1_0"

    .line 36
    const-string/jumbo v2, "http/1.0"

    .line 32
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    .line 38
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string/jumbo v1, "HTTP_1_1"

    .line 45
    const-string/jumbo v2, "http/1.1"

    .line 38
    invoke-direct {v0, v1, v4, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 47
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string/jumbo v1, "SPDY_3"

    .line 57
    const-string/jumbo v2, "spdy/3.1"

    .line 47
    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    sput-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 59
    new-instance v0, Lcom/android/okhttp/Protocol;

    const-string/jumbo v1, "HTTP_2"

    .line 69
    const-string/jumbo v2, "h2"

    .line 59
    invoke-direct {v0, v1, v6, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .registers 4
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    return-object v0

    .line 84
    :cond_d
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    return-object v0

    .line 85
    :cond_1a
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    return-object v0

    .line 86
    :cond_27
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    return-object v0

    .line 87
    :cond_34
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/android/okhttp/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/Protocol;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
