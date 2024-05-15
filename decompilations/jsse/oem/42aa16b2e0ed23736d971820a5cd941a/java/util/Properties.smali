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
        "Ljava/util/Hashtable<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o hexDigit:[C

.field private static final whitelist serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected whitelist core-platform-api test-api defaults:Ljava/util/Properties;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1144
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Ljava/util/Properties;->hexDigit:[C

    return-void

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

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 137
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Properties;)V
    .registers 2
    .param p1, "defaults"    # Ljava/util/Properties;

    .line 144
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 145
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 146
    return-void
.end method

.method private declared-synchronized greylist-max-o enumerate(Ljava/util/Hashtable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1108
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_a

    .line 1109
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1111
    .end local p0    # "this":Ljava/util/Properties;
    :cond_a
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1113
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    .line 1114
    nop

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_e

    .line 1115
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_23
    monitor-exit p0

    return-void

    .line 1107
    .end local p1    # "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o enumerateStringProperties(Ljava/util/Hashtable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1123
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_a

    .line 1124
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1126
    .end local p0    # "this":Ljava/util/Properties;
    :cond_a
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1127
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 1128
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1129
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2d

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 1130
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    .line 1132
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :cond_2d
    goto :goto_e

    .line 1133
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2e
    monitor-exit p0

    return-void

    .line 1122
    .end local p1    # "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o load0(Ljava/util/Properties$LineReader;)V
    .registers 13
    .param p1, "lr"    # Ljava/util/Properties$LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 349
    .local v0, "convtBuf":[C
    :goto_4
    invoke-virtual {p1}, Ljava/util/Properties$LineReader;->readLine()I

    move-result v1

    move v2, v1

    .local v2, "limit":I
    if-ltz v1, :cond_65

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "c":C
    const/4 v3, 0x0

    .line 352
    .local v3, "keyLen":I
    move v4, v2

    .line 353
    .local v4, "valueStart":I
    const/4 v5, 0x0

    .line 356
    .local v5, "hasSep":Z
    const/4 v6, 0x0

    .line 357
    .local v6, "precedingBackslash":Z
    :goto_10
    const/16 v7, 0x3a

    const/4 v8, 0x0

    const/16 v9, 0x3d

    if-ge v3, v2, :cond_3d

    .line 358
    iget-object v10, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v1, v10, v3

    .line 360
    if-eq v1, v9, :cond_1f

    if-ne v1, v7, :cond_25

    :cond_1f
    if-nez v6, :cond_25

    .line 361
    add-int/lit8 v4, v3, 0x1

    .line 362
    const/4 v5, 0x1

    .line 363
    goto :goto_3d

    .line 366
    :cond_25
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_30

    if-nez v6, :cond_30

    .line 367
    add-int/lit8 v4, v3, 0x1

    .line 368
    goto :goto_3d

    .line 370
    :cond_30
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_39

    .line 371
    if-nez v6, :cond_37

    const/4 v8, 0x1

    :cond_37
    move v6, v8

    goto :goto_3a

    .line 373
    :cond_39
    const/4 v6, 0x0

    .line 375
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 377
    :cond_3d
    :goto_3d
    if-ge v4, v2, :cond_53

    .line 378
    iget-object v10, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v1, v10, v4

    .line 381
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_50

    .line 382
    if-nez v5, :cond_53

    if-eq v1, v9, :cond_4f

    if-ne v1, v7, :cond_53

    .line 383
    :cond_4f
    const/4 v5, 0x1

    .line 388
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 390
    :cond_53
    iget-object v7, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    invoke-direct {p0, v7, v8, v3, v0}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "key":Ljava/lang/String;
    iget-object v8, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    sub-int v9, v2, v4

    invoke-direct {p0, v8, v4, v9, v0}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_4

    .line 394
    .end local v1    # "c":C
    .end local v3    # "keyLen":I
    .end local v4    # "valueStart":I
    .end local v5    # "hasSep":Z
    .end local v6    # "precedingBackslash":Z
    :cond_65
    return-void
.end method

.method private greylist-max-o loadConvert([CII[C)Ljava/lang/String;
    .registers 13
    .param p1, "in"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "convtBuf"    # [C

    .line 541
    array-length v0, p4

    if-ge v0, p3, :cond_c

    .line 542
    mul-int/lit8 v0, p3, 0x2

    .line 543
    .local v0, "newLen":I
    if-gez v0, :cond_a

    .line 544
    const v0, 0x7fffffff

    .line 546
    :cond_a
    new-array p4, v0, [C

    .line 549
    .end local v0    # "newLen":I
    :cond_c
    move-object v0, p4

    .line 550
    .local v0, "out":[C
    const/4 v1, 0x0

    .line 551
    .local v1, "outLen":I
    add-int v2, p2, p3

    .line 553
    .local v2, "end":I
    :goto_10
    if-ge p2, v2, :cond_89

    .line 554
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    .line 555
    .local p2, "aChar":C
    const/16 v4, 0x5c

    if-ne p2, v4, :cond_82

    .line 556
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    aget-char p2, p1, v3

    .line 557
    const/16 v3, 0x75

    if-ne p2, v3, :cond_60

    .line 559
    const/4 v3, 0x0

    .line 560
    .local v3, "value":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    const/4 v6, 0x4

    if-ge v5, v6, :cond_58

    .line 561
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "off":I
    .local v6, "off":I
    aget-char p2, p1, v4

    .line 562
    packed-switch p2, :pswitch_data_90

    packed-switch p2, :pswitch_data_a8

    packed-switch p2, :pswitch_data_b8

    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Malformed \\uxxxx encoding."

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 569
    :pswitch_3c
    shl-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x61

    .line 570
    .end local v3    # "value":I
    .local v4, "value":I
    move v3, v4

    goto :goto_54

    .line 573
    .end local v4    # "value":I
    .restart local v3    # "value":I
    :pswitch_45
    shl-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x41

    .line 574
    .end local v3    # "value":I
    .restart local v4    # "value":I
    move v3, v4

    goto :goto_54

    .line 565
    .end local v4    # "value":I
    .restart local v3    # "value":I
    :pswitch_4e
    shl-int/lit8 v4, v3, 0x4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x30

    .line 566
    .end local v3    # "value":I
    .restart local v4    # "value":I
    move v3, v4

    .line 560
    .end local v4    # "value":I
    .restart local v3    # "value":I
    :goto_54
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_24

    .line 580
    .end local v5    # "i":I
    .end local v6    # "off":I
    .local v4, "off":I
    :cond_58
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outLen":I
    .local v5, "outLen":I
    int-to-char v6, v3

    aput-char v6, v0, v1

    .line 581
    .end local v3    # "value":I
    move p2, v4

    move v1, v5

    goto :goto_10

    .line 582
    .end local v5    # "outLen":I
    .restart local v1    # "outLen":I
    :cond_60
    const/16 v3, 0x74

    if-ne p2, v3, :cond_67

    const/16 p2, 0x9

    goto :goto_7b

    .line 583
    :cond_67
    const/16 v3, 0x72

    if-ne p2, v3, :cond_6e

    const/16 p2, 0xd

    goto :goto_7b

    .line 584
    :cond_6e
    const/16 v3, 0x6e

    if-ne p2, v3, :cond_75

    const/16 p2, 0xa

    goto :goto_7b

    .line 585
    :cond_75
    const/16 v3, 0x66

    if-ne p2, v3, :cond_7b

    const/16 p2, 0xc

    .line 586
    :cond_7b
    :goto_7b
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "outLen":I
    .local v3, "outLen":I
    aput-char p2, v0, v1

    move v1, v3

    move p2, v4

    goto :goto_10

    .line 589
    .end local v4    # "off":I
    .restart local v1    # "outLen":I
    .local v3, "off":I
    :cond_82
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outLen":I
    .local v4, "outLen":I
    aput-char p2, v0, v1

    move p2, v3

    move v1, v4

    goto :goto_10

    .line 592
    .end local v3    # "off":I
    .end local v4    # "outLen":I
    .restart local v1    # "outLen":I
    .local p2, "off":I
    :cond_89
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :pswitch_data_90
    .packed-switch 0x30
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x41
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x61
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method private greylist saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 13
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 603
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x2

    .line 604
    .local v1, "bufLen":I
    if-gez v1, :cond_b

    .line 605
    const v1, 0x7fffffff

    .line 607
    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 609
    .local v2, "outBuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_11
    if-ge v3, v0, :cond_d0

    .line 610
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 613
    .local v4, "aChar":C
    const/16 v5, 0x3d

    const/16 v6, 0x5c

    if-le v4, v5, :cond_30

    const/16 v7, 0x7f

    if-ge v4, v7, :cond_30

    .line 614
    if-ne v4, v6, :cond_2b

    .line 615
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 616
    goto/16 :goto_cc

    .line 618
    :cond_2b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 619
    goto/16 :goto_cc

    .line 621
    :cond_30
    const/16 v7, 0x9

    if-eq v4, v7, :cond_c3

    const/16 v7, 0xa

    if-eq v4, v7, :cond_ba

    const/16 v7, 0xc

    if-eq v4, v7, :cond_b1

    const/16 v7, 0xd

    if-eq v4, v7, :cond_a8

    const/16 v7, 0x20

    if-eq v4, v7, :cond_9d

    const/16 v8, 0x21

    if-eq v4, v8, :cond_96

    const/16 v8, 0x23

    if-eq v4, v8, :cond_96

    const/16 v8, 0x3a

    if-eq v4, v8, :cond_96

    if-eq v4, v5, :cond_96

    .line 642
    if-lt v4, v7, :cond_5b

    const/16 v5, 0x7e

    if-le v4, v5, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v5, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v5, 0x1

    :goto_5c
    and-int/2addr v5, p3

    if-eqz v5, :cond_92

    .line 643
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 644
    const/16 v5, 0x75

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 645
    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 646
    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 647
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 648
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_cc

    .line 650
    :cond_92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_cc

    .line 639
    :cond_96
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    goto :goto_cc

    .line 623
    :cond_9d
    if-eqz v3, :cond_a1

    if-eqz p2, :cond_a4

    .line 624
    :cond_a1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 625
    :cond_a4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 626
    goto :goto_cc

    .line 631
    :cond_a8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x72

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 632
    goto :goto_cc

    .line 633
    :cond_b1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x66

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 634
    goto :goto_cc

    .line 629
    :cond_ba
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x6e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 630
    goto :goto_cc

    .line 627
    :cond_c3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x74

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 628
    nop

    .line 609
    .end local v4    # "aChar":C
    :goto_cc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 654
    .end local v3    # "x":I
    :cond_d0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "comments"    # Ljava/lang/String;
    .param p3, "escUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    if-eqz p2, :cond_5

    .line 829
    invoke-static {p1, p2}, Ljava/util/Properties;->writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 831
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 833
    monitor-enter p0

    .line 834
    :try_start_26
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_2a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 835
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 836
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 837
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 841
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 844
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    goto :goto_2a

    .line 845
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_26 .. :try_end_64} :catchall_68

    .line 846
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 847
    return-void

    .line 845
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method private static greylist-max-o toHex(I)C
    .registers 3
    .param p0, "nibble"    # I

    .line 1140
    sget-object v0, Ljava/util/Properties;->hexDigit:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    return v0
.end method

.method private static greylist-max-o writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 13
    .param p0, "bw"    # Ljava/io/BufferedWriter;
    .param p1, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 661
    .local v1, "len":I
    const/4 v2, 0x0

    .line 662
    .local v2, "current":I
    const/4 v3, 0x0

    .line 663
    .local v3, "last":I
    const/4 v4, 0x6

    new-array v4, v4, [C

    .line 664
    .local v4, "uu":[C
    const/4 v5, 0x0

    const/16 v6, 0x5c

    aput-char v6, v4, v5

    .line 665
    const/16 v5, 0x75

    const/4 v6, 0x1

    aput-char v5, v4, v6

    .line 666
    :goto_18
    if-ge v2, v1, :cond_9c

    .line 667
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 668
    .local v5, "c":C
    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0xff

    if-gt v5, v9, :cond_2a

    if-eq v5, v8, :cond_2a

    if-ne v5, v7, :cond_98

    .line 669
    :cond_2a
    if-eq v3, v2, :cond_33

    .line 670
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 671
    :cond_33
    if-le v5, v9, :cond_68

    .line 672
    const/4 v7, 0x2

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/util/Properties;->toHex(I)C

    move-result v8

    aput-char v8, v4, v7

    .line 673
    const/4 v7, 0x3

    shr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/util/Properties;->toHex(I)C

    move-result v8

    aput-char v8, v4, v7

    .line 674
    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Ljava/util/Properties;->toHex(I)C

    move-result v7

    const/4 v8, 0x4

    aput-char v7, v4, v8

    .line 675
    const/4 v7, 0x5

    and-int/lit8 v8, v5, 0xf

    invoke-static {v8}, Ljava/util/Properties;->toHex(I)C

    move-result v8

    aput-char v8, v4, v7

    .line 676
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_96

    .line 678
    :cond_68
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 679
    if-ne v5, v7, :cond_7b

    add-int/lit8 v7, v1, -0x1

    if-eq v2, v7, :cond_7b

    add-int/lit8 v7, v2, 0x1

    .line 681
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_7b

    .line 682
    add-int/lit8 v2, v2, 0x1

    .line 684
    :cond_7b
    add-int/lit8 v7, v1, -0x1

    if-eq v2, v7, :cond_93

    add-int/lit8 v7, v2, 0x1

    .line 685
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_96

    add-int/lit8 v7, v2, 0x1

    .line 686
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_96

    .line 687
    :cond_93
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 689
    :cond_96
    :goto_96
    add-int/lit8 v3, v2, 0x1

    .line 691
    :cond_98
    nop

    .end local v5    # "c":C
    add-int/2addr v2, v6

    .line 692
    goto/16 :goto_18

    .line 693
    :cond_9c
    if-eq v3, v2, :cond_a5

    .line 694
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 695
    :cond_a5
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 696
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 984
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 985
    .local v0, "oval":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 986
    .local v1, "sval":Ljava/lang/String;
    :goto_d
    if-nez v1, :cond_18

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_18

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    return-object v2
.end method

.method public whitelist core-platform-api test-api getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1003
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist core-platform-api test-api list(Ljava/io/PrintStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1060
    const-string v0, "-- listing properties --"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1062
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1063
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1064
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1065
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1066
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_43

    .line 1067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    goto :goto_11

    .line 1071
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5b
    return-void
.end method

.method public whitelist core-platform-api test-api list(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1088
    const-string v0, "-- listing properties --"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1090
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1091
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1092
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1093
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1094
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_43

    .line 1095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1097
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    goto :goto_11

    .line 1099
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5b
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_1
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 338
    monitor-exit p0

    return-void

    .line 336
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api load(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 313
    :try_start_1
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 314
    monitor-exit p0

    return-void

    .line 312
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "reader":Ljava/io/Reader;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api loadFromXML(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    monitor-enter p0

    .line 889
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Ljava/util/XMLUtils;->load(Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 890
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 891
    monitor-exit p0

    return-void

    .line 888
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api propertyNames()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .line 1022
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1023
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1024
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 719
    goto :goto_5

    .line 718
    :catch_4
    move-exception v0

    .line 720
    :goto_5
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 162
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 162
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "8859_1"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 823
    return-void
.end method

.method public whitelist core-platform-api test-api store(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedWriter;

    goto :goto_d

    .line 774
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :goto_d
    const/4 v1, 0x0

    .line 773
    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 777
    return-void
.end method

.method public whitelist core-platform-api test-api storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method public whitelist core-platform-api test-api storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/OutputStream;

    .line 969
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    .line 968
    invoke-static {p0, v0, p2, v1}, Ljava/util/XMLUtils;->save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public whitelist core-platform-api test-api stringPropertyNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1046
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1047
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1048
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
