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
.field private static final greylist-max-o FIELDS_OFFSET:J

.field private static final greylist-max-o UNSAFE:Lsun/misc/Unsafe;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final transient greylist holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 277
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "hostname"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/net/InetAddress;

    const-string v3, "addr"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "port"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/InetSocketAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 324
    :try_start_29
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    .line 325
    .local v0, "unsafe":Lsun/misc/Unsafe;
    const-class v1, Ljava/net/InetSocketAddress;

    const-string v2, "holder"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    .line 327
    sput-object v0, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_3d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_29 .. :try_end_3d} :catch_3f

    .line 330
    .end local v0    # "unsafe":Lsun/misc/Unsafe;
    nop

    .line 331
    return-void

    .line 328
    :catch_3f
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor greylist-max-o test-api <init>()V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 160
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 161
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "port"    # I

    .line 179
    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 180
    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .line 243
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 244
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 245
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 230
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 231
    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 235
    .local v1, "host":Ljava/lang/String;
    :try_start_8
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 238
    goto :goto_10

    .line 236
    :catch_e
    move-exception v2

    .line 237
    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v1, p1

    .line 239
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_10
    new-instance v2, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, v3, v4}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V

    iput-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 240
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/InetAddress;I)V
    .registers 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 197
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 198
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 202
    if-nez p1, :cond_a

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    goto :goto_b

    :cond_a
    move-object v1, p1

    .line 203
    :goto_b
    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 204
    return-void
.end method

.method private static greylist-max-o checkHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hostname"    # Ljava/lang/String;

    .line 149
    if-eqz p0, :cond_3

    .line 151
    return-object p0

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostname can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkPort(I)I
    .registers 4
    .param p0, "port"    # I

    .line 143
    if-ltz p0, :cond_8

    const v0, 0xffff

    if-gt p0, v0, :cond_8

    .line 145
    return p0

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 269
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v1

    invoke-static {p0}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 298
    .local v0, "oisFields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "hostname"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, "oisHostname":Ljava/lang/String;
    const-string v3, "addr"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 300
    .local v3, "oisAddr":Ljava/net/InetAddress;
    const-string v4, "port"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 303
    .local v4, "oisPort":I
    invoke-static {v4}, Ljava/net/InetSocketAddress;->checkPort(I)I

    .line 304
    if-nez v1, :cond_2c

    if-eqz v3, :cond_24

    goto :goto_2c

    .line 305
    :cond_24
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v5, "hostname and addr can\'t both be null"

    invoke-direct {v2, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_2c
    :goto_2c
    new-instance v5, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-direct {v5, v1, v3, v4, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$1;)V

    move-object v2, v5

    .line 311
    .local v2, "h":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    sget-object v5, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    invoke-virtual {v5, p0, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 312
    return-void
.end method

.method private whitelist readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 287
    .local v0, "pfields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # getter for: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;
    invoke-static {v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$100(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hostname"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # getter for: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;
    invoke-static {v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$200(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "addr"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # getter for: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I
    invoke-static {v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$300(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v1

    const-string v2, "port"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 291
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 420
    if-eqz p1, :cond_13

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_7

    goto :goto_13

    .line 422
    :cond_7
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    iget-object v1, v1, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 421
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 349
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # invokes: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getAddress()Ljava/net/InetAddress;
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$500(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHostName()Ljava/lang/String;
    .registers 2

    .line 360
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # invokes: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostName()Ljava/lang/String;
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$600(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHostString()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # invokes: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostString()Ljava/lang/String;
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$700(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPort()I
    .registers 2

    .line 339
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # invokes: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getPort()I
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$400(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 432
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api isUnresolved()Z
    .registers 2

    .line 382
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    # invokes: Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->access$800(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 395
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
