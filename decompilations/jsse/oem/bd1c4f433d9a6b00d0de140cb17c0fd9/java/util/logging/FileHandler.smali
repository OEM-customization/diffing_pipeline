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
.field private static final MAX_LOCKS:I = 0x64

.field private static final locks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field private files:[Ljava/io/File;

.field private limit:I

.field private lockFileChannel:Ljava/nio/channels/FileChannel;

.field private lockFileName:Ljava/lang/String;

.field private meter:Ljava/util/logging/FileHandler$MeteredStream;

.field private pattern:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/util/logging/FileHandler;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/logging/FileHandler;

    .prologue
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
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

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 288
    :cond_10
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
.end method

.method public constructor <init>(Ljava/lang/String;II)V
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

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 355
    if-ltz p2, :cond_8

    if-ge p3, v1, :cond_e

    .line 356
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 355
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_8

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
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
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

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 394
    if-ltz p2, :cond_8

    if-ge p3, v1, :cond_e

    .line 395
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 394
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_8

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
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 316
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 321
    :cond_10
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
.end method

.method private configure()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 222
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 224
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".pattern"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%h/java%u.log"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".limit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 228
    iget v4, p0, Ljava/util/logging/FileHandler;->limit:I

    if-gez v4, :cond_4c

    .line 229
    iput v6, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 231
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/FileHandler;->count:I

    .line 232
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    if-gtz v4, :cond_6c

    .line 233
    iput v8, p0, Ljava/util/logging/FileHandler;->count:I

    .line 235
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".append"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/XMLFormatter;

    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 240
    :try_start_de
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".encoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_fa} :catch_fb

    .line 249
    :goto_fa
    return-void

    .line 241
    :catch_fb
    move-exception v1

    .line 243
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_fd
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_fa

    .line 244
    :catch_101
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_fa
.end method

.method private generate(Ljava/lang/String;II)Ljava/io/File;
    .registers 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .param p3, "unique"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x25

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v8, ""

    .line 571
    .local v8, "word":Ljava/lang/String;
    const/4 v4, 0x0

    .line 572
    .local v4, "ix":I
    const/4 v5, 0x0

    .line 573
    .local v5, "sawg":Z
    const/4 v6, 0x0

    .line 574
    .end local v2    # "file":Ljava/io/File;
    .local v6, "sawu":Z
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_d1

    .line 575
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 576
    .local v0, "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, "ch2":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_24

    .line 579
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 581
    .end local v1    # "ch2":C
    :cond_24
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3a

    .line 582
    if-nez v2, :cond_33

    .line 583
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v2, "file":Ljava/io/File;
    :goto_2f
    const-string/jumbo v8, ""

    goto :goto_9

    .line 585
    .end local v2    # "file":Ljava/io/File;
    :cond_33
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2f

    .line 589
    .end local v2    # "file":Ljava/io/File;
    :cond_3a
    if-ne v0, v11, :cond_be

    .line 590
    const/16 v9, 0x74

    if-ne v1, v9, :cond_5b

    .line 591
    const-string/jumbo v9, "java.io.tmpdir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 592
    .local v7, "tmpDir":Ljava/lang/String;
    if-nez v7, :cond_50

    .line 593
    const-string/jumbo v9, "user.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    :cond_50
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 597
    const-string/jumbo v8, ""

    goto :goto_9

    .line 599
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "tmpDir":Ljava/lang/String;
    :cond_5b
    const/16 v9, 0x68

    if-ne v1, v9, :cond_71

    .line 600
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "user.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 609
    const-string/jumbo v8, ""

    goto :goto_9

    .line 611
    .end local v2    # "file":Ljava/io/File;
    :cond_71
    const/16 v9, 0x67

    if-ne v1, v9, :cond_8a

    .line 612
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 613
    const/4 v5, 0x1

    .line 614
    add-int/lit8 v4, v4, 0x1

    .line 615
    goto :goto_9

    .line 616
    :cond_8a
    const/16 v9, 0x75

    if-ne v1, v9, :cond_a4

    .line 617
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 618
    const/4 v6, 0x1

    .line 619
    add-int/lit8 v4, v4, 0x1

    .line 620
    goto/16 :goto_9

    .line 621
    :cond_a4
    if-ne v1, v11, :cond_be

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 624
    goto/16 :goto_9

    .line 627
    :cond_be
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    .line 629
    .end local v0    # "ch":C
    :cond_d1
    iget v9, p0, Ljava/util/logging/FileHandler;->count:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_f2

    xor-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_f2

    .line 630
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 632
    :cond_f2
    if-lez p3, :cond_110

    xor-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_110

    .line 633
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 635
    :cond_110
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_11d

    .line 636
    if-nez v2, :cond_11e

    .line 637
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    :cond_11d
    :goto_11d
    return-object v2

    .line 639
    :cond_11e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_11d
.end method

.method private isParentWritable(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "path"    # Ljava/nio/file/Path;

    .prologue
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
    if-eqz v0, :cond_15

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private open(Ljava/io/File;Z)V
    .registers 9
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "len":I
    if-eqz p2, :cond_8

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 211
    :cond_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 212
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/util/logging/FileHandler$MeteredStream;

    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/FileHandler$MeteredStream;-><init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V

    iput-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    .line 214
    iget-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 215
    return-void
.end method

.method private openFiles()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v12

    .line 420
    .local v12, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v12}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/logging/FileHandler;->count:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_35

    .line 422
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "file count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/logging/FileHandler;->count:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 424
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/logging/FileHandler;->limit:I

    move/from16 v19, v0

    if-gez v19, :cond_45

    .line 425
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/logging/FileHandler;->limit:I

    .line 430
    :cond_45
    new-instance v5, Ljava/util/logging/FileHandler$InitializationErrorManager;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>(Ljava/util/logging/FileHandler$InitializationErrorManager;)V

    .line 431
    .local v5, "em":Ljava/util/logging/FileHandler$InitializationErrorManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 435
    const/4 v15, -0x1

    .line 437
    .local v15, "unique":I
    :goto_54
    add-int/lit8 v15, v15, 0x1

    .line 438
    const/16 v19, 0x64

    move/from16 v0, v19

    if-le v15, v0, :cond_7c

    .line 439
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Couldn\'t get lock for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 442
    :cond_7c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v15}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".lck"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 447
    sget-object v20, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    monitor-enter v20

    .line 448
    :try_start_af
    sget-object v19, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_be
    .catchall {:try_start_af .. :try_end_be} :catchall_1b5

    move-result v19

    if-eqz v19, :cond_c3

    :cond_c1
    :goto_c1
    monitor-exit v20

    goto :goto_54

    .line 454
    :cond_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_1b5

    move-result-object v11

    .line 455
    .local v11, "lockFilePath":Ljava/nio/file/Path;
    const/4 v4, 0x0

    .line 456
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/4 v13, -0x1

    .line 457
    .local v13, "retries":I
    const/4 v7, 0x0

    .local v7, "fileCreated":Z
    move v14, v13

    .line 458
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v13    # "retries":I
    .local v14, "retries":I
    :goto_dd
    if-nez v4, :cond_104

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "retries":I
    .restart local v13    # "retries":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_105

    .line 460
    const/16 v19, 0x2

    :try_start_e9
    move/from16 v0, v19

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    move-object/from16 v19, v0

    .line 461
    sget-object v21, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    const/16 v22, 0x0

    aput-object v21, v19, v22

    sget-object v21, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/16 v22, 0x1

    aput-object v21, v19, v22

    .line 460
    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    :try_end_100
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_e9 .. :try_end_100} :catch_160
    .catchall {:try_start_e9 .. :try_end_100} :catchall_1b5

    move-result-object v4

    .line 462
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x1

    :goto_102
    move v14, v13

    .end local v13    # "retries":I
    .restart local v14    # "retries":I
    goto :goto_dd

    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    :cond_104
    move v13, v14

    .line 492
    .end local v14    # "retries":I
    .restart local v13    # "retries":I
    :cond_105
    :goto_105
    if-eqz v4, :cond_c1

    .line 493
    :try_start_107
    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_10b
    .catchall {:try_start_107 .. :try_end_10b} :catchall_1b5

    .line 497
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_114} :catch_1a6
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_10b .. :try_end_114} :catch_1a2
    .catchall {:try_start_10b .. :try_end_114} :catchall_1b5

    move-result-object v19

    if-eqz v19, :cond_19f

    const/4 v3, 0x1

    .line 519
    :goto_118
    if-eqz v3, :cond_1aa

    .line 521
    :try_start_11a
    sget-object v19, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_129
    .catchall {:try_start_11a .. :try_end_129} :catchall_1b5

    monitor-exit v20

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/logging/FileHandler;->count:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    .line 531
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_13d
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/logging/FileHandler;->count:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_1b8

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v15}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v20

    aput-object v20, v19, v8

    .line 531
    add-int/lit8 v8, v8, 0x1

    goto :goto_13d

    .line 463
    .end local v8    # "i":I
    :catch_160
    move-exception v10

    .line 469
    .local v10, "ix":Ljava/nio/file/FileAlreadyExistsException;
    const/16 v19, 0x1

    :try_start_163
    move/from16 v0, v19

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    move-object/from16 v19, v0

    sget-object v21, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v22, 0x0

    aput-object v21, v19, v22

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v19

    if-eqz v19, :cond_105

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/logging/FileHandler;->isParentWritable(Ljava/nio/file/Path;)Z
    :try_end_17c
    .catchall {:try_start_163 .. :try_end_17c} :catchall_1b5

    move-result v19

    .line 469
    if-eqz v19, :cond_105

    .line 472
    const/16 v19, 0x2

    :try_start_181
    move/from16 v0, v19

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    move-object/from16 v19, v0

    .line 473
    sget-object v21, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/16 v22, 0x0

    aput-object v21, v19, v22

    sget-object v21, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/16 v22, 0x1

    aput-object v21, v19, v22

    .line 472
    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    :try_end_198
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_181 .. :try_end_198} :catch_19b
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_198} :catch_218
    .catchall {:try_start_181 .. :try_end_198} :catchall_1b5

    move-result-object v4

    .restart local v4    # "channel":Ljava/nio/channels/FileChannel;
    goto/16 :goto_102

    .line 474
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    :catch_19b
    move-exception v18

    .local v18, "x":Ljava/nio/file/NoSuchFileException;
    move v14, v13

    .line 478
    .end local v13    # "retries":I
    .restart local v14    # "retries":I
    goto/16 :goto_dd

    .line 497
    .end local v10    # "ix":Ljava/nio/file/FileAlreadyExistsException;
    .end local v14    # "retries":I
    .end local v18    # "x":Ljava/nio/file/NoSuchFileException;
    .restart local v13    # "retries":I
    :cond_19f
    const/4 v3, 0x0

    .local v3, "available":Z
    goto/16 :goto_118

    .line 512
    .end local v3    # "available":Z
    :catch_1a2
    move-exception v17

    .line 517
    .local v17, "x":Ljava/nio/channels/OverlappingFileLockException;
    const/4 v3, 0x0

    .restart local v3    # "available":Z
    goto/16 :goto_118

    .line 505
    .end local v3    # "available":Z
    .end local v17    # "x":Ljava/nio/channels/OverlappingFileLockException;
    :catch_1a6
    move-exception v9

    .line 511
    .local v9, "ix":Ljava/io/IOException;
    move v3, v7

    .local v3, "available":Z
    goto/16 :goto_118

    .line 526
    .end local v3    # "available":Z
    .end local v9    # "ix":Ljava/io/IOException;
    :cond_1aa
    :try_start_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b3
    .catchall {:try_start_1aa .. :try_end_1b3} :catchall_1b5

    goto/16 :goto_c1

    .line 447
    .end local v7    # "fileCreated":Z
    .end local v11    # "lockFilePath":Ljava/nio/file/Path;
    .end local v13    # "retries":I
    :catchall_1b5
    move-exception v19

    monitor-exit v20

    throw v19

    .line 536
    .restart local v7    # "fileCreated":Z
    .restart local v8    # "i":I
    .restart local v11    # "lockFilePath":Ljava/nio/file/Path;
    .restart local v13    # "retries":I
    :cond_1b8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/logging/FileHandler;->append:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e2

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V

    .line 543
    :goto_1d5
    iget-object v6, v5, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    .line 544
    .local v6, "ex":Ljava/lang/Exception;
    if-eqz v6, :cond_20b

    .line 545
    instance-of v0, v6, Ljava/io/IOException;

    move/from16 v19, v0

    if-eqz v19, :cond_1e6

    .line 546
    check-cast v6, Ljava/io/IOException;

    .end local v6    # "ex":Ljava/lang/Exception;
    throw v6

    .line 539
    :cond_1e2
    invoke-direct/range {p0 .. p0}, Ljava/util/logging/FileHandler;->rotate()V

    goto :goto_1d5

    .line 547
    .restart local v6    # "ex":Ljava/lang/Exception;
    :cond_1e6
    instance-of v0, v6, Ljava/lang/SecurityException;

    move/from16 v19, v0

    if-eqz v19, :cond_1ef

    .line 548
    check-cast v6, Ljava/lang/SecurityException;

    .end local v6    # "ex":Ljava/lang/Exception;
    throw v6

    .line 550
    .restart local v6    # "ex":Ljava/lang/Exception;
    :cond_1ef
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 555
    :cond_20b
    new-instance v19, Ljava/util/logging/ErrorManager;

    invoke-direct/range {v19 .. v19}, Ljava/util/logging/ErrorManager;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 556
    return-void

    .line 479
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v10    # "ix":Ljava/nio/file/FileAlreadyExistsException;
    :catch_218
    move-exception v16

    .local v16, "x":Ljava/io/IOException;
    goto/16 :goto_105
.end method

.method private declared-synchronized rotate()V
    .registers 8

    .prologue
    monitor-enter p0

    .line 649
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    .line 650
    .local v4, "oldLevel":Ljava/util/logging/Level;
    sget-object v5, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v5}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 652
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 653
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    add-int/lit8 v2, v5, -0x2

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_32

    .line 654
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v0, v5, v2

    .line 655
    .local v0, "f1":Ljava/io/File;
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    add-int/lit8 v6, v2, 0x1

    aget-object v1, v5, v6

    .line 656
    .local v1, "f2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 657
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 658
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 660
    :cond_2c
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_47

    .line 653
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 664
    .end local v0    # "f1":Ljava/io/File;
    .end local v1    # "f2":Ljava/io/File;
    :cond_32
    :try_start_32
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_40
    .catchall {:try_start_32 .. :try_end_3b} :catchall_47

    .line 671
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    monitor-exit p0

    .line 672
    return-void

    .line 665
    :catch_40
    move-exception v3

    .line 668
    .local v3, "ix":Ljava/io/IOException;
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_43
    invoke-virtual {p0, v5, v3, v6}, Ljava/util/logging/FileHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_3b

    .end local v2    # "i":I
    .end local v3    # "ix":Ljava/io/IOException;
    .end local v4    # "oldLevel":Ljava/util/logging/Level;
    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 711
    :try_start_1
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 713
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    if-nez v1, :cond_a

    monitor-exit p0

    .line 714
    return-void

    .line 718
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_32
    .catchall {:try_start_a .. :try_end_f} :catchall_2f

    .line 722
    :goto_f
    :try_start_f
    sget-object v2, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2f

    .line 723
    :try_start_12
    sget-object v1, Ljava/util/logging/FileHandler;->locks:Ljava/util/Set;

    iget-object v3, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2c

    :try_start_19
    monitor-exit v2

    .line 725
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 726
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 727
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2f

    monitor-exit p0

    .line 728
    return-void

    .line 722
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2

    throw v1
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 719
    :catch_32
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_f
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 682
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/FileHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_25

    move-result v0

    if-nez v0, :cond_9

    monitor-exit p0

    .line 683
    return-void

    .line 685
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 686
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    .line 687
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lez v0, :cond_23

    iget-object v0, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    iget v0, v0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lt v0, v1, :cond_23

    .line 693
    new-instance v0, Ljava/util/logging/FileHandler$1;

    invoke-direct {v0, p0}, Ljava/util/logging/FileHandler$1;-><init>(Ljava/util/logging/FileHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    .line 701
    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
