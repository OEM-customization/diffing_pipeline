.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Matcher$OffsetBasedMatchResult;
    }
.end annotation


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private address:J

.field private anchoringBounds:Z

.field private appendPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private nativeFinalizer:Ljava/lang/Runnable;

.field private originalInput:Ljava/lang/CharSequence;

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 123
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 124
    const-class v1, Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/util/regex/Matcher;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Ljava/util/regex/Matcher;->nativeSize()I

    move-result v4

    int-to-long v4, v4

    .line 123
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    .line 106
    return-void
.end method

.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "parent"    # Ljava/util/regex/Pattern;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 179
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 180
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 181
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 12
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "escape":Z
    const/4 v1, 0x0

    .line 657
    .local v1, "dollar":Z
    const/4 v3, 0x0

    .line 658
    .local v3, "escapeNamedGroup":Z
    const/4 v4, -0x1

    .line 660
    .local v4, "escapeNamedGroupStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_68

    .line 661
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 662
    .local v0, "c":C
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_1d

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1d

    .line 663
    const/4 v2, 0x1

    .line 660
    :cond_1a
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 664
    :cond_1d
    const/16 v7, 0x24

    if-ne v0, v7, :cond_27

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_27

    .line 665
    const/4 v1, 0x1

    goto :goto_1a

    .line 666
    :cond_27
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3c

    const/16 v7, 0x39

    if-gt v0, v7, :cond_3c

    if-eqz v1, :cond_3c

    .line 667
    add-int/lit8 v7, v0, -0x30

    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    const/4 v1, 0x0

    goto :goto_1a

    .line 669
    :cond_3c
    const/16 v7, 0x7b

    if-ne v0, v7, :cond_45

    if-eqz v1, :cond_45

    .line 670
    const/4 v3, 0x1

    .line 671
    move v4, v5

    goto :goto_1a

    .line 672
    :cond_45
    if-ne v0, v8, :cond_5b

    if-eqz v1, :cond_5b

    if-eqz v3, :cond_5b

    .line 674
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "namedGroupName":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    const/4 v1, 0x0

    .line 677
    const/4 v3, 0x0

    goto :goto_1a

    .line 678
    .end local v6    # "namedGroupName":Ljava/lang/String;
    :cond_5b
    if-eq v0, v8, :cond_61

    if-eqz v1, :cond_61

    if-nez v3, :cond_1a

    .line 681
    :cond_61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 682
    const/4 v1, 0x0

    .line 683
    const/4 v2, 0x0

    .line 684
    const/4 v3, 0x0

    goto :goto_1a

    .line 688
    .end local v0    # "c":C
    :cond_68
    if-eqz v3, :cond_73

    .line 689
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Missing ending brace \'}\' from replacement string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 692
    :cond_73
    if-eqz v2, :cond_7f

    .line 693
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v7

    .line 695
    :cond_7f
    return-void
.end method

.method private ensureMatch()V
    .registers 3

    .prologue
    .line 1108
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_d

    .line 1109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_d
    return-void
.end method

.method private static native findImpl(JI[I)Z
.end method

.method private static native findNextImpl(J[I)Z
.end method

.method private static getMatchedGroupIndex(JLjava/lang/String;)I
    .registers 7
    .param p0, "patternAddr"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1183
    invoke-static {p0, p1, p2}, Ljava/util/regex/Matcher;->getMatchedGroupIndex0(JLjava/lang/String;)I

    move-result v0

    .line 1184
    .local v0, "result":I
    if-gez v0, :cond_20

    .line 1185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No capturing group in the pattern with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1188
    :cond_20
    return v0
.end method

.method private static native getMatchedGroupIndex0(JLjava/lang/String;)I
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native groupCountImpl(J)I
.end method

.method private static native hitEndImpl(J)Z
.end method

.method private static native lookingAtImpl(J[I)Z
.end method

.method private static native matchesImpl(J[I)Z
.end method

.method private static native nativeSize()I
.end method

.method private static native openImpl(J)J
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x24

    const/4 v5, -0x1

    const/16 v4, 0x5c

    .line 547
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_12

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_12

    .line 548
    return-object p0

    .line 549
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 551
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 552
    .local v0, "c":C
    if-eq v0, v4, :cond_26

    if-ne v0, v6, :cond_29

    .line 553
    :cond_26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    :cond_29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 557
    .end local v0    # "c":C
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static native requireEndImpl(J)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 1072
    if-nez p1, :cond_c

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_c
    if-ltz p2, :cond_10

    if-gez p3, :cond_16

    .line 1077
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1076
    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_10

    if-gt p2, p3, :cond_10

    .line 1080
    iput-object p1, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    .line 1081
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    .line 1082
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    .line 1083
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    .line 1084
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 1086
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 1087
    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 1089
    return-object p0
.end method

.method private resetForInput()V
    .registers 6

    .prologue
    .line 1093
    monitor-enter p0

    .line 1094
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v3, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v4, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/regex/Matcher;->setInputImpl(JLjava/lang/String;II)V

    .line 1095
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V

    .line 1096
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    .line 1098
    return-void

    .line 1093
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native setInputImpl(JLjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(JZ)V
.end method

.method private static native useTransparentBoundsImpl(JZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 639
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 643
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 713
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_13

    .line 714
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    :cond_13
    return-object p1
.end method

.method public end()I
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .registers 4
    .param p1, "group"    # I

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 286
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public end(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 312
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    iget-object v1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v2, v1, Ljava/util/regex/Pattern;->address:J

    invoke-static {v2, v3, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public find()Z
    .registers 4

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->findNextImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    .line 477
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 474
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public find(I)Z
    .registers 5
    .param p1, "start"    # I

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 500
    if-ltz p1, :cond_d

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_38

    .line 501
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_38
    monitor-enter p0

    .line 505
    :try_start_39
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/regex/Matcher;->findImpl(JI[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_47

    monitor-exit p0

    .line 507
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 504
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public group()Ljava/lang/String;
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .registers 7
    .param p1, "group"    # I

    .prologue
    const/4 v4, -0x1

    .line 375
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 376
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 377
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 378
    .local v1, "to":I
    if-eq v0, v4, :cond_16

    if-ne v1, v4, :cond_18

    .line 379
    :cond_16
    const/4 v2, 0x0

    return-object v2

    .line 381
    :cond_18
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 413
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 414
    iget-object v3, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v4, v3, Ljava/util/regex/Pattern;->address:J

    invoke-static {v4, v5, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    .line 415
    .local v1, "group":I
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v4, v1, 0x2

    aget v0, v3, v4

    .line 416
    .local v0, "from":I
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v2, v3, v4

    .line 417
    .local v2, "to":I
    if-eq v0, v6, :cond_1e

    if-ne v2, v6, :cond_20

    .line 418
    :cond_1e
    const/4 v3, 0x0

    return-object v3

    .line 420
    :cond_20
    iget-object v3, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public groupCount()I
    .registers 3

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->groupCountImpl(J)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 437
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAnchoringBounds()Z
    .registers 2

    .prologue
    .line 931
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .registers 3

    .prologue
    .line 997
    monitor-enter p0

    .line 998
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->hitEndImpl(J)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 997
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookingAt()Z
    .registers 4

    .prologue
    .line 525
    monitor-enter p0

    .line 526
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->lookingAtImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    .line 528
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 525
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matches()Z
    .registers 4

    .prologue
    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->matchesImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    .line 455
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 452
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 830
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .registers 2

    .prologue
    .line 856
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .registers 2

    .prologue
    .line 843
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 754
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 755
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 756
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_e
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 757
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    .line 759
    :cond_18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 797
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 798
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 799
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 801
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .registers 3

    .prologue
    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->requireEndImpl(J)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 1018
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .registers 4

    .prologue
    .line 1034
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    iget-object v1, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 1052
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .registers 2

    .prologue
    .line 1123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .registers 4
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1152
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public start(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1179
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    iget-object v1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v2, v1, Ljava/util/regex/Pattern;->address:J

    invoke-static {v2, v3, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .registers 4

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 202
    new-instance v0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.regex.Matcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string/jumbo v1, "[pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 975
    const-string/jumbo v1, " region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    const-string/jumbo v1, " lastmatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 979
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    :cond_4c
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 956
    monitor-enter p0

    .line 957
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 958
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 960
    return-object p0

    .line 956
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "newPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 222
    if-nez p1, :cond_b

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newPattern == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_b
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    .line 228
    monitor-enter p0

    .line 229
    :try_start_e
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 230
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    .line 234
    :cond_1e
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v0, v0, Ljava/util/regex/Pattern;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->openImpl(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    .line 235
    sget-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Ljava/util/regex/Matcher;->address:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_4a

    monitor-exit p0

    .line 238
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 239
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 242
    :cond_3a
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 244
    return-object p0

    .line 228
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 907
    monitor-enter p0

    .line 908
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 909
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 911
    return-object p0

    .line 907
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
