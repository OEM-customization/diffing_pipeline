.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLInputStream"
.end annotation


# static fields
.field private static final synthetic -javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$javax$net$ssl$SSLEngineResult$Status:[I

.field private final fromEngine:Ljava/nio/ByteBuffer;

.field private fromSocket:Ljava/nio/ByteBuffer;

.field private final readLock:Ljava/lang/Object;

.field private final singleByte:[B

.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private socketInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method private static synthetic -getjavax-net-ssl-SSLEngineResult$StatusSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$Status;->values()[Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I
    .registers 5
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readInternal([BII)I

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    .line 577
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x24
    nop

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 570
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x14
    nop

    .line 571
    const/4 v0, 0x1

    new-array v0, v0, [B

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x18
    nop

    .line 578
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 580
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@18
    nop

    .line 581
    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    if-nez v0, :cond_2c

    .line 704
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x20
    nop

    .line 705
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap2(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x1c
    nop

    .line 706
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x1c
    nop

    if-eqz v0, :cond_2d

    .line 708
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 707
    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    .line 713
    :cond_2c
    :goto_2c
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 710
    :cond_2d
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    goto :goto_2c
.end method

.method private readFromSocket()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x1c
    nop

    if-eqz v1, :cond_d

    .line 717
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x1c
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@36
    nop

    move-result v1

    return v1

    .line 721
    :cond_d
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x20
    nop

    .line 722
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@40
    nop

    move-result-object v2

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@32
    nop

    move-result v3

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@34
    nop

    move-result v4

    .line 721
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3, v4}, vtable@17
    nop

    move-result v0

    .line 723
    .local v0, "read":I
    if-lez v0, :cond_33

    .line 724
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@32
    nop

    move-result v2

    add-int/2addr v2, v0

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@33
    nop

    .line 726
    :cond_33
    return v0
.end method

.method private readInternal([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 632
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 633
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@80
    nop

    .line 636
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 640
    :cond_d
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@34
    nop

    move-result v3

    if-lez v3, :cond_25

    .line 641
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@34
    nop

    move-result v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 642
    .local v2, "readFromEngine":I
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3, p1, p2, v2}, vtable@55
    nop

    .line 643
    return v2

    .line 647
    .end local v2    # "readFromEngine":I
    :cond_25
    const/4 v1, 0x1

    .line 650
    .local v1, "needMoreDataFromSocket":Z
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@18
    nop

    .line 651
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@16
    nop

    .line 652
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x24
    nop

    invoke-static {v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v3

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4, v5}, vtable@38
    nop

    move-result-object v0

    .line 657
    .local v0, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@48
    nop

    .line 658
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@18
    nop

    .line 660
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-getjavax-net-ssl-SSLEngineResult$StatusSwitchesValues()[I

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@15
    nop

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_94

    .line 681
    new-instance v3, Ljavax/net/ssl/SSLException;

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected engine result "

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@76
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@7
    nop

    move-result-object v4

    .line 681
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 662
    :pswitch_77
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    move-result v3

    if-nez v3, :cond_86

    .line 686
    :goto_7d
    if-nez v1, :cond_8b

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    move-result v3

    if-nez v3, :cond_8b

    .line 689
    return v6

    .line 667
    :cond_86
    const/4 v1, 0x0

    .line 668
    goto :goto_7d

    .line 672
    :pswitch_88
    const/4 v1, 0x0

    .line 673
    goto :goto_7d

    .line 677
    :pswitch_8a
    return v7

    .line 693
    :cond_8b
    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readFromSocket()I

    move-result v3

    if-ne v3, v7, :cond_d

    .line 695
    return v7

    .line 660
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_77
        :pswitch_8a
        :pswitch_88
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 623
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@79
    nop

    .line 624
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x14
    nop

    monitor-enter v1

    .line 625
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 626
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@34
    nop

    move-result v2

    .line 627
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@21
    nop

    move-result v3

    if-nez v3, :cond_22

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x20
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@11
    nop
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_26

    move-result v3

    if-lez v3, :cond_23

    :cond_22
    const/4 v0, 0x1

    .line 626
    :cond_23
    add-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 624
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    .line 586
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 590
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@79
    nop

    .line 591
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x14
    nop

    monitor-enter v2

    .line 593
    :try_start_a
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    const/4 v3, 0x0

    const/4 v4, 0x1

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v1, v3, v4}, vtable@17
    nop
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_32

    move-result v0

    .line 594
    .local v0, "count":I
    if-ne v0, v5, :cond_16

    monitor-exit v2

    .line 596
    return v5

    .line 598
    :cond_16
    if-eq v0, v6, :cond_35

    .line 599
    :try_start_18
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read incorrect number of bytes "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v0}, vtable@72
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_32

    .line 591
    .end local v0    # "count":I
    :catchall_32
    move-exception v1

    monitor-exit v2

    throw v1

    .line 601
    .restart local v0    # "count":I
    :cond_35
    :try_start_35
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    const/4 v3, 0x0

    aget-byte v1, v1, v3
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    monitor-exit v2

    return v1
.end method

.method public read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 608
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x14
    nop

    monitor-enter v1

    .line 609
    :try_start_8
    array-length v0, p1

    const/4 v2, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, v2, v0}, vtable@17
    nop
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit v1

    return v0

    .line 608
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 616
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    monitor-enter v0

    .line 617
    :try_start_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readInternal([BII)I
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    move-result v1

    monitor-exit v0

    return v1

    .line 616
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method
