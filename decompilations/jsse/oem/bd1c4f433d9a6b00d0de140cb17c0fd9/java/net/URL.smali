.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static factory:Ljava/net/URLStreamHandlerFactory; = null

.field static handlers:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final protocolPathProp:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerLock:Ljava/lang/Object;


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field transient handler:Ljava/net/URLStreamHandler;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field transient hostAddress:Ljava/net/InetAddress;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1139
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    .line 1140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v4, p0, Ljava/net/URL;->port:I

    .line 223
    iput v4, p0, Ljava/net/URL;->hashCode:I

    .line 374
    if-eqz p5, :cond_13

    .line 375
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 376
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_13

    .line 378
    invoke-direct {p0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    .line 382
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 383
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 384
    if-eqz p2, :cond_6e

    .line 390
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_49

    const-string/jumbo v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_49

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 393
    :cond_49
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 395
    if-ge p3, v4, :cond_67

    .line 396
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid port number :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_67
    iput p3, p0, Ljava/net/URL;->port:I

    .line 400
    if-ne p3, v4, :cond_c9

    move-object v2, p2

    :goto_6c
    iput-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 403
    :cond_6e
    new-instance v0, Ljava/net/Parts;

    invoke-direct {v0, p4, p2}, Ljava/net/Parts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v0, "parts":Ljava/net/Parts;
    invoke-virtual {v0}, Ljava/net/Parts;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 405
    invoke-virtual {v0}, Ljava/net/Parts;->getQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 407
    iget-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    if-eqz v2, :cond_e2

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 412
    :goto_a1
    invoke-virtual {v0}, Ljava/net/Parts;->getRef()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 416
    if-nez p5, :cond_e7

    .line 417
    invoke-static {p1}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object p5

    if-nez p5, :cond_e7

    .line 418
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    .end local v0    # "parts":Ljava/net/Parts;
    :cond_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    .line 410
    .restart local v0    # "parts":Ljava/net/Parts;
    :cond_e2
    iget-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_a1

    .line 420
    :cond_e7
    iput-object p5, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 488
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 26
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->port:I

    .line 223
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->hashCode:I

    .line 513
    move-object/from16 v19, p2

    .line 515
    .local v19, "original":Ljava/lang/String;
    const/4 v6, 0x0

    .line 516
    .local v6, "start":I
    const/16 v18, 0x0

    .line 517
    .local v18, "newProtocol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 518
    .local v10, "aRef":Z
    const/16 v16, 0x0

    .line 521
    .local v16, "isRelative":Z
    if-eqz p3, :cond_24

    .line 522
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v21

    .line 523
    .local v21, "sm":Ljava/lang/SecurityManager;
    if-eqz v21, :cond_24

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    .line 529
    .end local v21    # "sm":Ljava/lang/SecurityManager;
    :cond_24
    :try_start_24
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    .line 530
    .local v17, "limit":I
    :goto_28
    if-lez v17, :cond_39

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_39

    .line 531
    add-int/lit8 v17, v17, -0x1

    goto :goto_28

    .line 533
    :cond_39
    :goto_39
    move/from16 v0, v17

    if-ge v6, v0, :cond_4a

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_4a

    .line 534
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 537
    :cond_4a
    const-string/jumbo v7, "url:"

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 538
    add-int/lit8 v6, v6, 0x4

    .line 540
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_6b

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_6b

    .line 545
    const/4 v10, 0x1

    .line 547
    :cond_6b
    move v15, v6

    .local v15, "i":I
    :goto_6c
    if-nez v10, :cond_98

    move/from16 v0, v17

    if-ge v15, v0, :cond_98

    .line 548
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "c":I
    const/16 v4, 0x2f

    if-eq v11, v4, :cond_98

    .line 549
    const/16 v4, 0x3a

    if-ne v11, v4, :cond_12b

    .line 551
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 552
    .local v20, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;->isValidProtocol(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 553
    move-object/from16 v18, v20

    .line 554
    .local v18, "newProtocol":Ljava/lang/String;
    add-int/lit8 v6, v15, 0x1

    .line 561
    .end local v11    # "c":I
    .end local v18    # "newProtocol":Ljava/lang/String;
    .end local v20    # "s":Ljava/lang/String;
    :cond_98
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 562
    if-eqz p1, :cond_107

    if-eqz v18, :cond_ae

    .line 563
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 562
    if-eqz v4, :cond_107

    .line 566
    :cond_ae
    if-nez p3, :cond_b6

    .line 567
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    move-object/from16 p3, v0

    .line 574
    :cond_b6
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    if-eqz v4, :cond_cb

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 575
    const/16 v18, 0x0

    .line 577
    :cond_cb
    if-nez v18, :cond_107

    .line 578
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 579
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 581
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 582
    move-object/from16 v0, p1

    iget v4, v0, Ljava/net/URL;->port:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->port:I

    .line 583
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 584
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 585
    const/16 v16, 0x1

    .line 589
    :cond_107
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v4, :cond_12f

    .line 590
    new-instance v4, Ljava/net/MalformedURLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no protocol: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_129
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_129} :catch_129
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_129} :catch_159

    .line 621
    .end local v15    # "i":I
    .end local v17    # "limit":I
    :catch_129
    move-exception v13

    .line 622
    .local v13, "e":Ljava/net/MalformedURLException;
    throw v13

    .line 548
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .restart local v11    # "c":I
    .restart local v15    # "i":I
    .restart local v17    # "limit":I
    .local v18, "newProtocol":Ljava/lang/String;
    :cond_12b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6c

    .line 595
    .end local v11    # "c":I
    .end local v18    # "newProtocol":Ljava/lang/String;
    :cond_12f
    if-nez p3, :cond_167

    .line 596
    :try_start_131
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object p3

    if-nez p3, :cond_167

    .line 597
    new-instance v4, Ljava/net/MalformedURLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown protocol: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_159
    .catch Ljava/net/MalformedURLException; {:try_start_131 .. :try_end_159} :catch_129
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_159} :catch_159

    .line 623
    .end local v15    # "i":I
    .end local v17    # "limit":I
    :catch_159
    move-exception v12

    .line 624
    .local v12, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/net/MalformedURLException;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 625
    .local v14, "exception":Ljava/net/MalformedURLException;
    invoke-virtual {v14, v12}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 626
    throw v14

    .line 600
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "exception":Ljava/net/MalformedURLException;
    .restart local v15    # "i":I
    .restart local v17    # "limit":I
    :cond_167
    :try_start_167
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 602
    const/16 v4, 0x23

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 603
    if-ltz v15, :cond_187

    .line 604
    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 605
    move/from16 v17, v15

    .line 612
    :cond_187
    if-eqz v16, :cond_1a3

    move/from16 v0, v17

    if-ne v6, v0, :cond_1a3

    .line 613
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    if-nez v4, :cond_1a3

    .line 615
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 619
    :cond_1a3
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v6, v3}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_1ae
    .catch Ljava/net/MalformedURLException; {:try_start_167 .. :try_end_1ae} :catch_129
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_1ae} :catch_159

    .line 628
    return-void
.end method

.method private checkSpecifyHandler(Ljava/lang/SecurityManager;)V
    .registers 3
    .param p1, "sm"    # Ljava/lang/SecurityManager;

    .prologue
    .line 654
    sget-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {p1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 655
    return-void
.end method

.method static getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 17
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1148
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    .line 1149
    .local v8, "handler":Ljava/net/URLStreamHandler;
    if-nez v8, :cond_121

    .line 1151
    const/4 v1, 0x0

    .line 1154
    .local v1, "checkedWithFactory":Z
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v14, :cond_1a

    .line 1155
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v8

    .line 1156
    const/4 v1, 0x1

    .line 1160
    :cond_1a
    if-nez v8, :cond_85

    .line 1161
    const-string/jumbo v14, "java.protocol.handler.pkgs"

    const-string/jumbo v15, ""

    invoke-static {v14, v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1162
    .local v13, "packagePrefixList":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v14, "|"

    invoke-direct {v12, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    .local v12, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_2e
    :goto_2e
    if-nez v8, :cond_85

    .line 1165
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    .line 1164
    if-eqz v14, :cond_85

    .line 1167
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1169
    .local v11, "packagePrefix":Ljava/lang/String;
    :try_start_3e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1170
    const-string/jumbo v15, ".Handler"

    .line 1169
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3e .. :try_end_5e} :catch_125

    move-result-object v4

    .line 1171
    .local v4, "clsName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1173
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1174
    .local v2, "cl":Ljava/lang/ClassLoader;
    const/4 v14, 0x1

    invoke-static {v4, v14, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_68} :catch_74
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_60 .. :try_end_68} :catch_125

    move-result-object v3

    .line 1181
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_69
    :goto_69
    if-eqz v3, :cond_2e

    .line 1183
    :try_start_6b
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v8, v0

    .line 1182
    goto :goto_2e

    .line 1175
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_74
    move-exception v6

    .line 1176
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1177
    .local v5, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v5, :cond_69

    .line 1178
    const/4 v14, 0x1

    invoke-static {v4, v14, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_83
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6b .. :try_end_83} :catch_125

    move-result-object v3

    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_69

    .line 1192
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "contextLoader":Ljava/lang/ClassLoader;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v11    # "packagePrefix":Ljava/lang/String;
    .end local v12    # "packagePrefixIter":Ljava/util/StringTokenizer;
    .end local v13    # "packagePrefixList":Ljava/lang/String;
    :cond_85
    if-nez v8, :cond_97

    .line 1197
    :try_start_87
    const-string/jumbo v14, "file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ab

    .line 1198
    new-instance v8, Lsun/net/www/protocol/file/Handler;

    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    invoke-direct {v8}, Lsun/net/www/protocol/file/Handler;-><init>()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_97} :catch_ff

    .line 1216
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    :cond_97
    :goto_97
    sget-object v15, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1218
    const/4 v9, 0x0

    .line 1222
    .local v9, "handler2":Ljava/net/URLStreamHandler;
    :try_start_9b
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v9, v0
    :try_end_a7
    .catchall {:try_start_9b .. :try_end_a7} :catchall_122

    .line 1224
    .local v9, "handler2":Ljava/net/URLStreamHandler;
    if-eqz v9, :cond_106

    monitor-exit v15

    .line 1225
    return-object v9

    .line 1199
    .end local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_ab
    :try_start_ab
    const-string/jumbo v14, "ftp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bc

    .line 1200
    new-instance v8, Lsun/net/www/protocol/ftp/Handler;

    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    invoke-direct {v8}, Lsun/net/www/protocol/ftp/Handler;-><init>()V

    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_97

    .line 1201
    :cond_bc
    const-string/jumbo v14, "jar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 1202
    new-instance v8, Lsun/net/www/protocol/jar/Handler;

    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    invoke-direct {v8}, Lsun/net/www/protocol/jar/Handler;-><init>()V

    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_97

    .line 1203
    :cond_cd
    const-string/jumbo v14, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e6

    .line 1205
    const-string/jumbo v14, "com.android.okhttp.HttpHandler"

    .line 1204
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;

    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_97

    .line 1206
    :cond_e6
    const-string/jumbo v14, "https"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_97

    .line 1208
    const-string/jumbo v14, "com.android.okhttp.HttpsHandler"

    .line 1207
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_fe} :catch_ff

    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_97

    .line 1211
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    :catch_ff
    move-exception v7

    .line 1212
    .local v7, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    .line 1230
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    .restart local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_106
    if-nez v1, :cond_114

    :try_start_108
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v14, :cond_114

    .line 1231
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v9

    .line 1234
    :cond_114
    if-eqz v9, :cond_117

    .line 1238
    move-object v8, v9

    .line 1242
    :cond_117
    if-eqz v8, :cond_120

    .line 1243
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catchall {:try_start_108 .. :try_end_120} :catchall_122

    :cond_120
    monitor-exit v15

    .line 1249
    .end local v1    # "checkedWithFactory":Z
    .end local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_121
    return-object v8

    .line 1216
    .restart local v1    # "checkedWithFactory":Z
    :catchall_122
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1185
    .restart local v11    # "packagePrefix":Ljava/lang/String;
    .restart local v12    # "packagePrefixIter":Ljava/util/StringTokenizer;
    .restart local v13    # "packagePrefixList":Ljava/lang/String;
    :catch_125
    move-exception v10

    .local v10, "ignored":Ljava/lang/ReflectiveOperationException;
    goto/16 :goto_2e
.end method

.method private isValidProtocol(Ljava/lang/String;)Z
    .registers 8
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 634
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 635
    .local v2, "len":I
    if-ge v2, v5, :cond_9

    .line 636
    return v4

    .line 637
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 638
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_14

    .line 639
    return v4

    .line 640
    :cond_14
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_15
    if-ge v1, v2, :cond_31

    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 642
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2e

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2e

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_2e

    .line 643
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2e

    .line 644
    return v4

    .line 640
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 647
    :cond_31
    return v5
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    monitor-enter p0

    .line 1277
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1278
    iget-object v3, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    if-nez v3, :cond_2e

    .line 1279
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1283
    :cond_2e
    :try_start_2e
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v3, :cond_9c

    .line 1284
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v3, :cond_98

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_98

    .line 1285
    :cond_3e
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-nez v3, :cond_47

    .line 1286
    const-string/jumbo v3, ""

    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 1287
    :cond_47
    iget v3, p0, Ljava/net/URL;->port:I

    if-ne v3, v5, :cond_b4

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    :goto_4d
    iput-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 1290
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1291
    .local v0, "at":I
    if-eq v0, v5, :cond_6c

    .line 1292
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 1293
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 1303
    .end local v0    # "at":I
    :cond_6c
    :goto_6c
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 1304
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 1305
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v3, :cond_93

    .line 1307
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1308
    .local v2, "q":I
    if-eq v2, v5, :cond_d2

    .line 1309
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 1310
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 1314
    .end local v2    # "q":I
    :cond_93
    :goto_93
    const/4 v3, -0x1

    iput v3, p0, Ljava/net/URL;->hashCode:I
    :try_end_96
    .catchall {:try_start_2e .. :try_end_96} :catchall_2b

    monitor-exit p0

    .line 1315
    return-void

    .line 1284
    :cond_98
    :try_start_98
    iget v3, p0, Ljava/net/URL;->port:I

    if-ne v3, v5, :cond_3e

    .line 1295
    :cond_9c
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v3, :cond_6c

    .line 1297
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1298
    .local v1, "ind":I
    if-eq v1, v5, :cond_6c

    .line 1299
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_6c

    .line 1287
    .end local v1    # "ind":I
    :cond_b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/net/URL;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4d

    .line 1312
    .restart local v2    # "q":I
    :cond_d2
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_98 .. :try_end_d6} :catchall_2b

    goto :goto_93
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 5
    .param p0, "fac"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 1123
    sget-object v2, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1124
    :try_start_3
    sget-object v1, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v1, :cond_13

    .line 1125
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 1123
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1127
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1128
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 1129
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1131
    :cond_1c
    sget-object v1, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 1132
    sput-object p0, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_10

    monitor-exit v2

    .line 1134
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1266
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 1267
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 879
    instance-of v1, p1, Ljava/net/URL;

    if-nez v1, :cond_6

    .line 880
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 881
    check-cast v0, Ljava/net/URL;

    .line 883
    .local v0, "u2":Ljava/net/URL;
    iget-object v1, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v1, p0, v0}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v1

    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .registers 2

    .prologue
    .line 787
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 774
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 834
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 895
    :try_start_1
    iget v0, p0, Ljava/net/URL;->hashCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 896
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    monitor-exit p0

    return v0

    .line 898
    :cond_a
    :try_start_a
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 899
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 7
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1026
    if-nez p1, :cond_b

    .line 1027
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "proxy can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1031
    :cond_b
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v3, :cond_3d

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1032
    .local v1, "p":Ljava/net/Proxy;
    :goto_11
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1033
    .local v2, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_36

    if-eqz v2, :cond_36

    .line 1034
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1035
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1036
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 1041
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_36
    :goto_36
    iget-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, p0, v1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    .line 1031
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3d
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v1

    .restart local v1    # "p":Ljava/net/Proxy;
    goto :goto_11

    .line 1038
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_42
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 1038
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_36
.end method

.method public final openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .registers 3
    .param p1, "other"    # Ljava/net/URL;

    .prologue
    .line 914
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "ref"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 670
    monitor-enter p0

    .line 671
    :try_start_2
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 673
    if-ne p3, v3, :cond_2f

    .end local p2    # "host":Ljava/lang/String;
    :goto_8
    iput-object p2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 674
    iput p3, p0, Ljava/net/URL;->port:I

    .line 675
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 676
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 679
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URL;->hashCode:I

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    .line 681
    const/16 v1, 0x3f

    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 682
    .local v0, "q":I
    if-eq v0, v3, :cond_48

    .line 683
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 684
    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_4b

    :goto_2d
    monitor-exit p0

    .line 688
    return-void

    .line 673
    .end local v0    # "q":I
    .restart local p2    # "host":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    .line 686
    .end local p2    # "host":Ljava/lang/String;
    .restart local v0    # "q":I
    :cond_48
    iput-object p4, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4b

    goto :goto_2d

    .line 670
    .end local v0    # "q":I
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "userInfo"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "ref"    # Ljava/lang/String;

    .prologue
    .line 708
    monitor-enter p0

    .line 709
    :try_start_1
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 710
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 711
    iput p3, p0, Ljava/net/URL;->port:I

    .line 712
    if-eqz p7, :cond_f

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_f
    move-object v0, p6

    :goto_10
    iput-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 713
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 714
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 715
    iput-object p8, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    .line 720
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 721
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3d

    monitor-exit p0

    .line 723
    return-void

    .line 712
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3d

    move-result-object v0

    goto :goto_10

    .line 708
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 928
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
