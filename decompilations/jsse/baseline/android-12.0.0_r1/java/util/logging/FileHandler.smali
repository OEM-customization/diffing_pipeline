.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$InitializationErrorManager;,
        Ljava/util/logging/FileHandler$MeteredStream;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_LOCKS:I = 0x64

.field private static final greylist-max-o locks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o append:Z

.field private greylist-max-o count:I

.field private greylist-max-o files:[Ljava/io/File;

.field private greylist-max-o limit:I

.field private greylist-max-o lockFileChannel:Ljava/nio/channels/FileChannel;

.field private greylist-max-o lockFileName:Ljava/lang/String;

.field private greylist-max-o meter:Ljava/util/logging/FileHandler$MeteredStream;

.field private greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 262
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 263
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 264
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 265
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1b

    .line 288
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 289
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 290
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 292
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 293
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 294
    return-void

    .line 286
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 355
    if-ltz p2, :cond_1e

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_1e

    .line 358
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 359
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 360
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 361
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 362
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    .line 363
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 364
    return-void

    .line 356
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 394
    if-ltz p2, :cond_20

    const/4 v0, 0x1

    if-lt p3, v0, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_20

    .line 397
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 398
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 399
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 400
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 401
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    .line 402
    iput-boolean p4, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 403
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 404
    return-void

    .line 395
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    .line 321
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 322
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 323
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 325
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 326
    iput-boolean p2, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 327
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 328
    return-void

    .line 319
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic blacklist access$100(Ljava/util/logging/FileHandler;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/logging/FileHandler;

    .line 151
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    return-void
.end method

.method private greylist-max-o configure()V
    .registers 6

    .line 222
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 224
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%h/java%u.log"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 228
    if-gez v2, :cond_41

    .line 229
    iput v3, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 231
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".count"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/FileHandler;->count:I

    .line 232
    if-gtz v2, :cond_5d

    .line 233
    iput v4, p0, Ljava/util/logging/FileHandler;->count:I

    .line 235
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".append"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".formatter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/logging/XMLFormatter;

    invoke-direct {v4}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 240
    :try_start_c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".encoding"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_dc} :catch_dd

    .line 248
    goto :goto_e3

    .line 241
    :catch_dd
    move-exception v2

    .line 243
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_de
    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e2

    .line 247
    goto :goto_e3

    .line 244
    :catch_e2
    move-exception v3

    .line 249
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_e3
    return-void
.end method

.method private greylist-max-o generate(Ljava/lang/String;II)Ljava/io/File;
    .registers 14
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .param p3, "unique"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "file":Ljava/io/File;
    const-string v1, ""

    .line 571
    .local v1, "word":Ljava/lang/String;
    const/4 v2, 0x0

    .line 572
    .local v2, "ix":I
    const/4 v3, 0x0

    .line 573
    .local v3, "sawg":Z
    const/4 v4, 0x0

    .line 574
    .local v4, "sawu":Z
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_c2

    .line 575
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 576
    .local v5, "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 577
    const/4 v6, 0x0

    .line 578
    .local v6, "ch2":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_21

    .line 579
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 581
    :cond_21
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_37

    .line 582
    if-nez v0, :cond_2e

    .line 583
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_34

    .line 585
    :cond_2e
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v7

    .line 587
    :goto_34
    const-string v1, ""

    .line 588
    goto :goto_6

    .line 589
    :cond_37
    const/16 v7, 0x25

    if-ne v5, v7, :cond_b1

    .line 590
    const/16 v8, 0x74

    const-string v9, "user.home"

    if-ne v6, v8, :cond_58

    .line 591
    const-string v7, "java.io.tmpdir"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 592
    .local v7, "tmpDir":Ljava/lang/String;
    if-nez v7, :cond_4d

    .line 593
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    :cond_4d
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    .line 596
    add-int/lit8 v2, v2, 0x1

    .line 597
    const-string v1, ""

    .line 598
    goto :goto_6

    .line 599
    .end local v7    # "tmpDir":Ljava/lang/String;
    :cond_58
    const/16 v8, 0x68

    if-ne v6, v8, :cond_6b

    .line 600
    new-instance v7, Ljava/io/File;

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 609
    add-int/lit8 v2, v2, 0x1

    .line 610
    const-string v1, ""

    .line 611
    goto :goto_6

    .line 612
    :cond_6b
    const/16 v8, 0x67

    if-ne v6, v8, :cond_82

    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    const/4 v3, 0x1

    .line 615
    add-int/lit8 v2, v2, 0x1

    .line 616
    goto :goto_6

    .line 617
    :cond_82
    const/16 v8, 0x75

    if-ne v6, v8, :cond_9a

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    const/4 v4, 0x1

    .line 620
    add-int/lit8 v2, v2, 0x1

    .line 621
    goto/16 :goto_6

    .line 622
    :cond_9a
    if-ne v6, v7, :cond_b1

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    add-int/lit8 v2, v2, 0x1

    .line 625
    goto/16 :goto_6

    .line 628
    :cond_b1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    .end local v5    # "ch":C
    .end local v6    # "ch2":C
    goto/16 :goto_6

    .line 630
    :cond_c2
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    const-string v6, "."

    const/4 v7, 0x1

    if-le v5, v7, :cond_dd

    if-nez v3, :cond_dd

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    :cond_dd
    if-lez p3, :cond_f3

    if-nez v4, :cond_f3

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    :cond_f3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_108

    .line 637
    if-nez v0, :cond_102

    .line 638
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_108

    .line 640
    :cond_102
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    .line 643
    :cond_108
    :goto_108
    return-object v0
.end method

.method private greylist-max-o isParentWritable(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 407
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 408
    .local v0, "parent":Ljava/nio/file/Path;
    if-nez v0, :cond_e

    .line 409
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 411
    :cond_e
    if-eqz v0, :cond_18

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private greylist-max-o open(Ljava/io/File;Z)V
    .registers 7
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "len":I
    if-eqz p2, :cond_8

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    .line 211
    :cond_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 212
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/util/logging/FileHandler$MeteredStream;

    invoke-direct {v3, p0, v2, v0}, Ljava/util/logging/FileHandler$MeteredStream;-><init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V

    iput-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    .line 214
    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 215
    return-void
.end method

.method private greylist-max-o openFiles()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 420
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 421
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_139

    .line 424
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    const/4 v3, 0x0

    if-gez v1, :cond_13

    .line 425
    iput v3, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 430
    :cond_13
    new-instance v1, Ljava/util/logging/FileHandler$InitializationErrorManager;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>(Ljava/util/logging/FileHandler$1;)V

    .line 431
    .local v1, "em":Ljava/util/logging/FileHandler$InitializationErrorManager;
    invoke-virtual {p0, v1}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 435
    const/4 v4, -0x1

    .line 437
    .local v4, "unique":I
    :goto_1d
    add-int/2addr v4, v2

    .line 438
    const/16 v5, 0x64

    if-gt v4, v5, :cond_120

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v4}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".lck"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 447
    sget-object v5, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    monitor-enter v5

    .line 448
    :try_start_42
    iget-object v6, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 451
    monitor-exit v5

    goto :goto_1d

    .line 454
    :cond_4c
    iget-object v6, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_11d

    .line 455
    .local v6, "lockFilePath":Ljava/nio/file/Path;
    const/4 v7, 0x0

    .line 456
    .local v7, "channel":Ljava/nio/channels/FileChannel;
    const/4 v8, -0x1

    .line 457
    .local v8, "retries":I
    const/4 v9, 0x0

    .line 458
    .local v9, "fileCreated":Z
    :goto_57
    if-nez v7, :cond_99

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "retries":I
    .local v10, "retries":I
    if-ge v8, v2, :cond_98

    .line 460
    const/4 v8, 0x2

    :try_start_5e
    new-array v11, v8, [Ljava/nio/file/OpenOption;

    sget-object v12, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    aput-object v12, v11, v3

    sget-object v12, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v12, v11, v2

    invoke-static {v6, v11}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_6c
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_5e .. :try_end_6c} :catch_70
    .catchall {:try_start_5e .. :try_end_6c} :catchall_11d

    move-object v7, v8

    .line 462
    const/4 v9, 0x1

    .line 489
    :goto_6e
    move v8, v10

    goto :goto_57

    .line 463
    :catch_70
    move-exception v11

    .line 469
    .local v11, "ix":Ljava/nio/file/FileAlreadyExistsException;
    :try_start_71
    new-array v12, v2, [Ljava/nio/file/LinkOption;

    sget-object v13, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v13, v12, v3

    invoke-static {v6, v12}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 470
    invoke-direct {p0, v6}, Ljava/util/logging/FileHandler;->isParentWritable(Ljava/nio/file/Path;)Z

    move-result v12
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_11d

    if-eqz v12, :cond_98

    .line 472
    :try_start_83
    new-array v8, v8, [Ljava/nio/file/OpenOption;

    sget-object v12, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v12, v8, v3

    sget-object v12, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v12, v8, v2

    invoke-static {v6, v8}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_91
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_83 .. :try_end_91} :catch_95
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_91} :catch_93
    .catchall {:try_start_83 .. :try_end_91} :catchall_11d

    move-object v7, v8

    .line 483
    goto :goto_6e

    .line 479
    :catch_93
    move-exception v8

    .line 482
    .local v8, "x":Ljava/io/IOException;
    goto :goto_98

    .line 474
    .end local v8    # "x":Ljava/io/IOException;
    :catch_95
    move-exception v8

    .line 478
    .local v8, "x":Ljava/nio/file/NoSuchFileException;
    move v8, v10

    goto :goto_57

    .line 492
    .end local v8    # "x":Ljava/nio/file/NoSuchFileException;
    .end local v11    # "ix":Ljava/nio/file/FileAlreadyExistsException;
    :cond_98
    :goto_98
    move v8, v10

    .end local v10    # "retries":I
    .local v8, "retries":I
    :cond_99
    if-nez v7, :cond_9d

    :try_start_9b
    monitor-exit v5

    goto :goto_1d

    .line 493
    :cond_9d
    iput-object v7, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_11d

    .line 497
    :try_start_9f
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v10
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a3} :catch_ad
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_9f .. :try_end_a3} :catch_a9
    .catchall {:try_start_9f .. :try_end_a3} :catchall_11d

    if-eqz v10, :cond_a7

    move v10, v2

    goto :goto_a8

    :cond_a7
    move v10, v3

    .local v10, "available":Z
    :goto_a8
    goto :goto_af

    .line 512
    .end local v10    # "available":Z
    :catch_a9
    move-exception v10

    .line 517
    .local v10, "x":Ljava/nio/channels/OverlappingFileLockException;
    const/4 v11, 0x0

    move v10, v11

    .local v11, "available":Z
    goto :goto_b0

    .line 505
    .end local v10    # "x":Ljava/nio/channels/OverlappingFileLockException;
    .end local v11    # "available":Z
    :catch_ad
    move-exception v10

    .line 511
    .local v10, "ix":Ljava/io/IOException;
    move v10, v9

    .line 518
    .local v10, "available":Z
    :goto_af
    nop

    .line 519
    :goto_b0
    if-eqz v10, :cond_115

    .line 521
    :try_start_b2
    sget-object v11, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    iget-object v12, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    monitor-exit v5
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_11d

    .line 530
    .end local v6    # "lockFilePath":Ljava/nio/file/Path;
    .end local v7    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "retries":I
    .end local v9    # "fileCreated":Z
    .end local v10    # "available":Z
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    new-array v5, v5, [Ljava/io/File;

    iput-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    .line 531
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c1
    iget v6, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v5, v6, :cond_d2

    .line 532
    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    iget-object v7, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v4}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v7

    aput-object v7, v6, v5

    .line 531
    add-int/lit8 v5, v5, 0x1

    goto :goto_c1

    .line 536
    .end local v5    # "i":I
    :cond_d2
    iget-boolean v5, p0, Ljava/util/logging/FileHandler;->append:Z

    if-eqz v5, :cond_de

    .line 537
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v3, v5, v3

    invoke-direct {p0, v3, v2}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V

    goto :goto_e1

    .line 539
    :cond_de
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    .line 543
    :goto_e1
    iget-object v2, v1, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    .line 544
    .local v2, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_10c

    .line 545
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_108

    .line 547
    instance-of v3, v2, Ljava/lang/SecurityException;

    if-eqz v3, :cond_f1

    .line 548
    move-object v3, v2

    check-cast v3, Ljava/lang/SecurityException;

    throw v3

    .line 550
    :cond_f1
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_108
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 555
    :cond_10c
    new-instance v3, Ljava/util/logging/ErrorManager;

    invoke-direct {v3}, Ljava/util/logging/ErrorManager;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 556
    return-void

    .line 526
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v6    # "lockFilePath":Ljava/nio/file/Path;
    .restart local v7    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v8    # "retries":I
    .restart local v9    # "fileCreated":Z
    .restart local v10    # "available":Z
    :cond_115
    :try_start_115
    iget-object v11, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V

    .line 527
    .end local v6    # "lockFilePath":Ljava/nio/file/Path;
    .end local v7    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "retries":I
    .end local v9    # "fileCreated":Z
    .end local v10    # "available":Z
    monitor-exit v5

    goto/16 :goto_1d

    :catchall_11d
    move-exception v2

    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_115 .. :try_end_11f} :catchall_11d

    throw v2

    .line 439
    :cond_120
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get lock for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    .end local v1    # "em":Ljava/util/logging/FileHandler$InitializationErrorManager;
    .end local v4    # "unique":I
    :cond_139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/util/logging/FileHandler;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized greylist-max-o rotate()V
    .registers 6

    monitor-enter p0

    .line 650
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    .line 651
    .local v0, "oldLevel":Ljava/util/logging/Level;
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 653
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 654
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_30

    .line 655
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v3, v2, v1

    .line 656
    .local v3, "f1":Ljava/io/File;
    add-int/lit8 v4, v1, 0x1

    aget-object v2, v2, v4

    .line 657
    .local v2, "f2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 659
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 661
    .end local p0    # "this":Ljava/util/logging/FileHandler;
    :cond_2a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_44

    .line 654
    .end local v2    # "f2":Ljava/io/File;
    .end local v3    # "f1":Ljava/io/File;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 665
    .end local v1    # "i":I
    :cond_30
    :try_start_30
    iget-object v1, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v2}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_39
    .catchall {:try_start_30 .. :try_end_38} :catchall_44

    .line 671
    goto :goto_3f

    .line 666
    :catch_39
    move-exception v1

    .line 669
    .local v1, "ix":Ljava/io/IOException;
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_3c
    invoke-virtual {p0, v2, v1, v3}, Ljava/util/logging/FileHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 672
    .end local v1    # "ix":Ljava/io/IOException;
    :goto_3f
    invoke-virtual {p0, v0}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    .line 673
    monitor-exit p0

    return-void

    .line 649
    .end local v0    # "oldLevel":Ljava/util/logging/Level;
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 712
    :try_start_1
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 714
    iget-object v0, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    if-nez v0, :cond_a

    .line 715
    monitor-exit p0

    return-void

    .line 719
    :cond_a
    :try_start_a
    iget-object v0, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_2e

    .line 722
    goto :goto_11

    .line 720
    .end local p0    # "this":Ljava/util/logging/FileHandler;
    :catch_10
    move-exception v0

    .line 723
    :goto_11
    :try_start_11
    sget-object v0, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_2e

    .line 724
    :try_start_14
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 725
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2b

    .line 726
    :try_start_1a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 728
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2e

    .line 729
    monitor-exit p0

    return-void

    .line 725
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 711
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 683
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/FileHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_9

    .line 684
    monitor-exit p0

    return-void

    .line 686
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 687
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    .line 688
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lez v0, :cond_23

    iget-object v0, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    iget v0, v0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lt v0, v1, :cond_23

    .line 694
    new-instance v0, Ljava/util/logging/FileHandler$1;

    invoke-direct {v0, p0}, Ljava/util/logging/FileHandler$1;-><init>(Ljava/util/logging/FileHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    .line 702
    .end local p0    # "this":Ljava/util/logging/FileHandler;
    :cond_23
    monitor-exit p0

    return-void

    .line 682
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method
