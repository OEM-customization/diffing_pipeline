.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Properties$LineReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final hexDigit:[C

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1141
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Ljava/util/Properties;->hexDigit:[C

    .line 117
    return-void

    .line 1141
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 2
    .param p1, "defaults"    # Ljava/util/Properties;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 144
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 145
    return-void
.end method

.method private declared-synchronized enumerate(Ljava/util/Hashtable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1105
    :try_start_1
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_a

    .line 1106
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v2, p1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1108
    :cond_a
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1109
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_e

    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_25
    monitor-exit p0

    .line 1112
    return-void
.end method

.method private declared-synchronized enumerateStringProperties(Ljava/util/Hashtable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1120
    :try_start_1
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_a

    .line 1121
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1123
    :cond_a
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1124
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 1125
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1126
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_e

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1127
    check-cast v1, Ljava/lang/String;

    .end local v1    # "k":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "v":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_e

    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2f
    monitor-exit p0

    .line 1130
    return-void
.end method

.method private load0(Ljava/util/Properties$LineReader;)V
    .registers 16
    .param p1, "lr"    # Ljava/util/Properties$LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3d

    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 340
    const/16 v9, 0x400

    new-array v1, v9, [C

    .line 348
    .local v1, "convtBuf":[C
    :goto_9
    invoke-virtual {p1}, Ljava/util/Properties$LineReader;->readLine()I

    move-result v5

    .local v5, "limit":I
    if-ltz v5, :cond_65

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "c":C
    const/4 v4, 0x0

    .line 351
    .local v4, "keyLen":I
    move v8, v5

    .line 352
    .local v8, "valueStart":I
    const/4 v2, 0x0

    .line 355
    .local v2, "hasSep":Z
    const/4 v6, 0x0

    .line 356
    .end local v0    # "c":C
    :goto_14
    if-ge v4, v5, :cond_25

    .line 357
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v0, v9, v4

    .line 359
    .local v0, "c":C
    if-eq v0, v13, :cond_1e

    if-ne v0, v12, :cond_3b

    :cond_1e
    xor-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_3b

    .line 360
    add-int/lit8 v8, v4, 0x1

    .line 361
    const/4 v2, 0x1

    .line 376
    .end local v0    # "c":C
    :cond_25
    :goto_25
    if-ge v8, v5, :cond_53

    .line 377
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v0, v9, v8

    .line 379
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_38

    .line 380
    if-nez v2, :cond_53

    if-eq v0, v13, :cond_37

    if-ne v0, v12, :cond_53

    .line 381
    :cond_37
    const/4 v2, 0x1

    .line 386
    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 365
    :cond_3b
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_48

    xor-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_48

    .line 366
    add-int/lit8 v8, v4, 0x1

    .line 367
    goto :goto_25

    .line 369
    :cond_48
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_51

    .line 370
    xor-int/lit8 v6, v6, 0x1

    .line 374
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 372
    :cond_51
    const/4 v6, 0x0

    .local v6, "precedingBackslash":Z
    goto :goto_4e

    .line 388
    .end local v0    # "c":C
    .end local v6    # "precedingBackslash":Z
    :cond_53
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    invoke-direct {p0, v9, v11, v4, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    sub-int v10, v5, v8

    invoke-direct {p0, v9, v8, v10, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 392
    .end local v2    # "hasSep":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyLen":I
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "valueStart":I
    :cond_65
    return-void
.end method

.method private loadConvert([CII[C)Ljava/lang/String;
    .registers 16
    .param p1, "in"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "convtBuf"    # [C

    .prologue
    const/4 v10, 0x0

    .line 538
    array-length v9, p4

    if-ge v9, p3, :cond_d

    .line 539
    mul-int/lit8 v3, p3, 0x2

    .line 540
    .local v3, "newLen":I
    if-gez v3, :cond_b

    .line 541
    const v3, 0x7fffffff

    .line 543
    :cond_b
    new-array p4, v3, [C

    .line 546
    .end local v3    # "newLen":I
    :cond_d
    move-object v5, p4

    .line 547
    .local v5, "out":[C
    const/4 v6, 0x0

    .line 548
    .local v6, "outLen":I
    add-int v1, p2, p3

    .local v1, "end":I
    move v7, v6

    .end local v6    # "outLen":I
    .local v7, "outLen":I
    move v4, p2

    .line 550
    .end local p2    # "off":I
    .local v4, "off":I
    :goto_13
    if-ge v4, v1, :cond_82

    .line 551
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    .line 552
    .local v0, "aChar":C
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_7d

    .line 553
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .restart local v4    # "off":I
    aget-char v0, p1, p2

    .line 554
    const/16 v9, 0x75

    if-ne v0, v9, :cond_5c

    .line 556
    const/4 v8, 0x0

    .line 557
    .local v8, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    const/4 v9, 0x4

    if-ge v2, v9, :cond_53

    .line 558
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    .line 559
    sparse-switch v0, :sswitch_data_88

    .line 573
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 574
    const-string/jumbo v10, "Malformed \\uxxxx encoding."

    .line 573
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 562
    :sswitch_3a
    shl-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x30

    .line 557
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_27

    .line 566
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :sswitch_43
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x61

    .line 567
    goto :goto_3f

    .line 570
    :sswitch_4b
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x41

    .line 571
    goto :goto_3f

    .line 577
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_53
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    int-to-char v9, v8

    aput-char v9, v5, v7

    move p2, v4

    .end local v0    # "aChar":C
    .end local v2    # "i":I
    .end local v4    # "off":I
    .end local v8    # "value":I
    .restart local p2    # "off":I
    :goto_59
    move v7, v6

    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_13

    .line 579
    .restart local v0    # "aChar":C
    :cond_5c
    const/16 v9, 0x74

    if-ne v0, v9, :cond_68

    const/16 v0, 0x9

    .line 583
    .end local v0    # "aChar":C
    :cond_62
    :goto_62
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    move p2, v4

    .end local v4    # "off":I
    .restart local p2    # "off":I
    goto :goto_59

    .line 580
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v0    # "aChar":C
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_68
    const/16 v9, 0x72

    if-ne v0, v9, :cond_6f

    const/16 v0, 0xd

    .local v0, "aChar":C
    goto :goto_62

    .line 581
    .local v0, "aChar":C
    :cond_6f
    const/16 v9, 0x6e

    if-ne v0, v9, :cond_76

    const/16 v0, 0xa

    .local v0, "aChar":C
    goto :goto_62

    .line 582
    .local v0, "aChar":C
    :cond_76
    const/16 v9, 0x66

    if-ne v0, v9, :cond_62

    const/16 v0, 0xc

    .local v0, "aChar":C
    goto :goto_62

    .line 586
    .end local v4    # "off":I
    .local v0, "aChar":C
    .restart local p2    # "off":I
    :cond_7d
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    goto :goto_59

    .line 589
    .end local v0    # "aChar":C
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_82
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v10, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v9

    .line 559
    :sswitch_data_88
    .sparse-switch
        0x30 -> :sswitch_3a
        0x31 -> :sswitch_3a
        0x32 -> :sswitch_3a
        0x33 -> :sswitch_3a
        0x34 -> :sswitch_3a
        0x35 -> :sswitch_3a
        0x36 -> :sswitch_3a
        0x37 -> :sswitch_3a
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3a
        0x41 -> :sswitch_4b
        0x42 -> :sswitch_4b
        0x43 -> :sswitch_4b
        0x44 -> :sswitch_4b
        0x45 -> :sswitch_4b
        0x46 -> :sswitch_4b
        0x61 -> :sswitch_43
        0x62 -> :sswitch_43
        0x63 -> :sswitch_43
        0x64 -> :sswitch_43
        0x65 -> :sswitch_43
        0x66 -> :sswitch_43
    .end sparse-switch
.end method

.method private saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 14
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .prologue
    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x5c

    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 600
    .local v2, "len":I
    mul-int/lit8 v1, v2, 0x2

    .line 601
    .local v1, "bufLen":I
    if-gez v1, :cond_11

    .line 602
    const v1, 0x7fffffff

    .line 604
    :cond_11
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 606
    .local v3, "outBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_17
    if-ge v4, v2, :cond_b1

    .line 607
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 610
    .local v0, "aChar":C
    const/16 v5, 0x3d

    if-le v0, v5, :cond_34

    const/16 v5, 0x7f

    if-ge v0, v5, :cond_34

    .line 611
    if-ne v0, v8, :cond_30

    .line 612
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 615
    :cond_30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 618
    :cond_34
    sparse-switch v0, :sswitch_data_b6

    .line 639
    if-lt v0, v9, :cond_3d

    const/16 v5, 0x7e

    if-le v0, v5, :cond_aa

    :cond_3d
    move v5, v6

    :goto_3e
    and-int/2addr v5, p3

    if-eqz v5, :cond_ac

    .line 640
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 641
    const/16 v5, 0x75

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 643
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 644
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 645
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 620
    :sswitch_74
    if-eqz v4, :cond_78

    if-eqz p2, :cond_7b

    .line 621
    :cond_78
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 622
    :cond_7b
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 624
    :sswitch_7f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 626
    :sswitch_88
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x6e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 628
    :sswitch_91
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x72

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 630
    :sswitch_9a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 636
    :sswitch_a3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    :cond_aa
    move v5, v7

    .line 639
    goto :goto_3e

    .line 647
    :cond_ac
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2d

    .line 651
    .end local v0    # "aChar":C
    :cond_b1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 618
    :sswitch_data_b6
    .sparse-switch
        0x9 -> :sswitch_7f
        0xa -> :sswitch_88
        0xc -> :sswitch_9a
        0xd -> :sswitch_91
        0x20 -> :sswitch_74
        0x21 -> :sswitch_a3
        0x23 -> :sswitch_a3
        0x3a -> :sswitch_a3
        0x3d -> :sswitch_a3
    .end sparse-switch
.end method

.method private store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "comments"    # Ljava/lang/String;
    .param p3, "escUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    if-eqz p2, :cond_5

    .line 826
    invoke-static {p1, p2}, Ljava/util/Properties;->writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 828
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 830
    monitor-enter p0

    .line 831
    :try_start_29
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_2d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 832
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 833
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 834
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 838
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_67
    .catchall {:try_start_29 .. :try_end_67} :catchall_68

    goto :goto_2d

    .line 830
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :catchall_68
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_6b
    monitor-exit p0

    .line 843
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 844
    return-void
.end method

.method private static toHex(I)C
    .registers 3
    .param p0, "nibble"    # I

    .prologue
    .line 1137
    sget-object v0, Ljava/util/Properties;->hexDigit:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    return v0
.end method

.method private static writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 12
    .param p0, "bw"    # Ljava/io/BufferedWriter;
    .param p1, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 656
    const-string/jumbo v5, "#"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 658
    .local v3, "len":I
    const/4 v1, 0x0

    .line 659
    .local v1, "current":I
    const/4 v2, 0x0

    .line 660
    .local v2, "last":I
    const/4 v5, 0x6

    new-array v4, v5, [C

    .line 661
    .local v4, "uu":[C
    const/16 v5, 0x5c

    const/4 v6, 0x0

    aput-char v5, v4, v6

    .line 662
    const/16 v5, 0x75

    const/4 v6, 0x1

    aput-char v5, v4, v6

    .line 663
    :goto_1f
    if-ge v1, v3, :cond_a0

    .line 664
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 665
    .local v0, "c":C
    if-gt v0, v9, :cond_29

    if-ne v0, v7, :cond_6b

    .line 666
    :cond_29
    :goto_29
    if-eq v2, v1, :cond_32

    .line 667
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 668
    :cond_32
    if-le v0, v9, :cond_6e

    .line 669
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x2

    aput-char v5, v4, v6

    .line 670
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x3

    aput-char v5, v4, v6

    .line 671
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x4

    aput-char v5, v4, v6

    .line 672
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x5

    aput-char v5, v4, v6

    .line 673
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 686
    :cond_66
    :goto_66
    add-int/lit8 v2, v1, 0x1

    .line 688
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 665
    :cond_6b
    if-ne v0, v8, :cond_68

    goto :goto_29

    .line 675
    :cond_6e
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 676
    if-ne v0, v8, :cond_81

    .line 677
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_81

    .line 678
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_81

    .line 679
    add-int/lit8 v1, v1, 0x1

    .line 681
    :cond_81
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_99

    .line 682
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_66

    .line 683
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_66

    .line 684
    :cond_99
    const-string/jumbo v5, "#"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_66

    .line 690
    .end local v0    # "c":C
    :cond_a0
    if-eq v2, v1, :cond_a9

    .line 691
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 692
    :cond_a9
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 693
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 982
    .local v0, "oval":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 983
    :goto_b
    if-nez v1, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    return-object v1

    .line 982
    :cond_18
    const/4 v1, 0x0

    .local v1, "sval":Ljava/lang/String;
    goto :goto_b
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_6
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method public list(Ljava/io/PrintStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 1057
    const-string/jumbo v4, "-- listing properties --"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1059
    .local v1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1060
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1061
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1062
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1063
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_47

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1068
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_63
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1085
    const-string/jumbo v4, "-- listing properties --"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1087
    .local v1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1088
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1089
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1090
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1091
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_47

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1096
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_63
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 336
    :try_start_1
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 337
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 312
    :try_start_1
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 313
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 886
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Ljava/util/XMLUtils;->load(Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 887
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    .line 888
    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1020
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1021
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 714
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 717
    :goto_3
    return-void

    .line 715
    :catch_4
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 161
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v2, "8859_1"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 819
    const/4 v1, 0x1

    .line 817
    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 820
    return-void
.end method

.method public store(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/io/BufferedWriter;

    .line 773
    .end local p1    # "writer":Ljava/io/Writer;
    :goto_6
    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 774
    return-void

    .line 771
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_b
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 966
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 965
    invoke-static {p0, v0, p2, v1}, Ljava/util/XMLUtils;->save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1044
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1045
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
