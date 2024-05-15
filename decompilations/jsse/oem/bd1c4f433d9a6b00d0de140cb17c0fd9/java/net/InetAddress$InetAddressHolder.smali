.class Ljava/net/InetAddress$InetAddressHolder;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InetAddressHolder"
.end annotation


# instance fields
.field address:I

.field family:I

.field hostName:Ljava/lang/String;

.field private originalHostName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I
    .param p3, "family"    # I

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 207
    iput p2, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 208
    iput p3, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 209
    return-void
.end method


# virtual methods
.method getAddress()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    return v0
.end method

.method getFamily()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return v0
.end method

.method getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method getOriginalHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/lang/String;I)V
    .registers 4
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "family"    # I

    .prologue
    .line 212
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 213
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 214
    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    .line 215
    iput p2, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 217
    :cond_9
    return-void
.end method
