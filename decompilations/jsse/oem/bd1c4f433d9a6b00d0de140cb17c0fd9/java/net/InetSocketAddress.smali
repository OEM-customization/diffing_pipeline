.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    }
.end annotation


# static fields
.field private static final FIELDS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final transient holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 273
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    .line 274
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "hostname"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 275
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "addr"

    const-class v5, Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 276
    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "port"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 273
    sput-object v2, Ljava/net/InetSocketAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 320
    :try_start_2c
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    .line 322
    .local v1, "unsafe":Lsun/misc/Unsafe;
    const-class v2, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "holder"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    .line 323
    sput-object v1, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_41
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2c .. :try_end_41} :catch_42

    .line 53
    return-void

    .line 324
    :catch_42
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 159
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "port"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 176
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 240
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-direct {v0, p2, v1, p1, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 227
    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 231
    .local v2, "host":Ljava/lang/String;
    :try_start_8
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_b} :catch_19

    move-result-object v0

    .line 235
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "host":Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v0, v4, v5}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v3, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 236
    return-void

    .line 232
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "host":Ljava/lang/String;
    :catch_19
    move-exception v1

    .line 233
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, p1

    .local v2, "host":Ljava/lang/String;
    goto :goto_c
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 194
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 198
    if-nez p1, :cond_a

    sget-object p1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 199
    .end local p1    # "addr":Ljava/net/InetAddress;
    :cond_a
    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v1

    .line 194
    invoke-direct {v0, v2, p1, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 200
    return-void
.end method

.method private static checkHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p0, :cond_b

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hostname can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_b
    return-object p0
.end method

.method private static checkPort(I)I
    .registers 4
    .param p0, "port"    # I

    .prologue
    .line 143
    if-ltz p0, :cond_7

    const v0, 0xffff

    if-le p0, v0, :cond_21

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_21
    return p0
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 265
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v1

    invoke-static {p0}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 293
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 294
    .local v2, "oisFields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "hostname"

    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "oisHostname":Ljava/lang/String;
    const-string/jumbo v5, "addr"

    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 296
    .local v1, "oisAddr":Ljava/net/InetAddress;
    const-string/jumbo v5, "port"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 299
    .local v4, "oisPort":I
    invoke-static {v4}, Ljava/net/InetSocketAddress;->checkPort(I)I

    .line 300
    if-nez v3, :cond_2f

    if-nez v1, :cond_2f

    .line 301
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string/jumbo v6, "hostname and addr can\'t both be null"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    :cond_2f
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-direct {v0, v3, v1, v4, v7}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    .line 307
    .local v0, "h":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    sget-object v5, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    invoke-virtual {v5, p0, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 308
    return-void
.end method

.method private readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 283
    .local v0, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "hostname"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string/jumbo v1, "addr"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string/jumbo v1, "port"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 287
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 416
    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 417
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_a
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap4(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHostString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap3(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUnresolved()Z
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
