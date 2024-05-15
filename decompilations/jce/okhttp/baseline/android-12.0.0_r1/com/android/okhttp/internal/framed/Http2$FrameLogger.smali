.class final Lcom/android/okhttp/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final blacklist BINARY:[Ljava/lang/String;

.field private static final blacklist FLAGS:[Ljava/lang/String;

.field private static final blacklist TYPES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 707
    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 724
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 725
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    sget-object v1, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v2, :cond_49

    .line 729
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "%8s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 732
    .end local v0    # "i":I
    :cond_49
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 733
    const-string v1, "END_STREAM"

    aput-object v1, v0, v5

    .line 735
    new-array v1, v5, [I

    aput v5, v1, v4

    .line 737
    .local v1, "prefixFlags":[I
    const-string v2, "PADDED"

    const/16 v5, 0x8

    aput-object v2, v0, v5

    .line 738
    array-length v0, v1

    move v2, v4

    :goto_5f
    const-string v6, "|PADDED"

    if-ge v2, v0, :cond_7f

    aget v7, v1, v2

    .line 739
    .local v7, "prefixFlag":I
    sget-object v8, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v9, v7, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 738
    .end local v7    # "prefixFlag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 742
    :cond_7f
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v7, "END_HEADERS"

    aput-object v7, v0, v2

    .line 743
    const-string v2, "PRIORITY"

    aput-object v2, v0, v3

    .line 744
    const/16 v2, 0x24

    const-string v3, "END_HEADERS|PRIORITY"

    aput-object v3, v0, v2

    .line 745
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_f8

    .line 748
    .local v0, "frameFlags":[I
    array-length v2, v0

    move v3, v4

    :goto_98
    if-ge v3, v2, :cond_e4

    aget v7, v0, v3

    .line 749
    .local v7, "frameFlag":I
    array-length v8, v1

    move v9, v4

    :goto_9e
    if-ge v9, v8, :cond_e1

    aget v10, v1, v9

    .line 750
    .local v10, "prefixFlag":I
    sget-object v11, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v15, v11, v7

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 751
    or-int v12, v10, v7

    or-int/2addr v12, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v11, v10

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v14, v11, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 749
    .end local v10    # "prefixFlag":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_9e

    .line 748
    .end local v7    # "frameFlag":I
    :cond_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 756
    :cond_e4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e5
    sget-object v3, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_f7

    .line 757
    aget-object v4, v3, v2

    if-nez v4, :cond_f4

    sget-object v4, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 756
    :cond_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    .line 759
    .end local v0    # "frameFlags":[I
    .end local v1    # "prefixFlags":[I
    .end local v2    # "i":I
    :cond_f7
    return-void

    :array_f8
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist formatFlags(BB)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 685
    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    .line 686
    :cond_5
    packed-switch p0, :pswitch_data_44

    .line 696
    :pswitch_8
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_20

    aget-object v0, v0, p1

    goto :goto_24

    .line 689
    :pswitch_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    const-string v0, "ACK"

    goto :goto_1a

    :cond_16
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1a
    return-object v0

    .line 694
    :pswitch_1b
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 696
    :cond_20
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 698
    .local v0, "result":Ljava/lang/String;
    :goto_24
    const/4 v1, 0x5

    if-ne p0, v1, :cond_34

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    .line 699
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 700
    :cond_34
    if-nez p0, :cond_43

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_43

    .line 701
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 703
    :cond_43
    return-object v0

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1b
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method static blacklist formatHeader(ZIIBB)Ljava/lang/String;
    .registers 11
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 673
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_a

    aget-object v0, v0, p3

    goto :goto_18

    :cond_a
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "formattedType":Ljava/lang/String;
    :goto_18
    invoke-static {p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "formattedFlags":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p0, :cond_24

    const-string v5, "<<"

    goto :goto_26

    :cond_24
    const-string v5, ">>"

    :goto_26
    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    const-string v2, "%s 0x%08x %5d %-13s %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
