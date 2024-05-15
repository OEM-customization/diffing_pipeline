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


# instance fields
.field greylist-max-o anchoringBounds:Z

.field greylist appendPos:I

.field blacklist from:I

.field blacklist groups:[I

.field private greylist-max-o matchFound:Z

.field private blacklist nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

.field private greylist-max-o originalInput:Ljava/lang/CharSequence;

.field private blacklist parentPattern:Ljava/util/regex/Pattern;

.field blacklist text:Ljava/lang/String;

.field blacklist to:I

.field greylist-max-o transparentBounds:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "parent"    # Ljava/util/regex/Pattern;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 154
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 167
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 168
    return-void
.end method

.method private greylist-max-o appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "s"    # Ljava/lang/String;

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "escape":Z
    const/4 v1, 0x0

    .line 734
    .local v1, "dollar":Z
    const/4 v2, 0x0

    .line 735
    .local v2, "escapeNamedGroup":Z
    const/4 v3, -0x1

    .line 737
    .local v3, "escapeNamedGroupStart":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 738
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 739
    .local v5, "c":C
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_17

    if-nez v0, :cond_17

    .line 740
    const/4 v0, 0x1

    goto :goto_68

    .line 741
    :cond_17
    const/16 v6, 0x24

    if-ne v5, v6, :cond_1f

    if-nez v0, :cond_1f

    .line 742
    const/4 v1, 0x1

    goto :goto_68

    .line 743
    :cond_1f
    const/16 v6, 0x30

    if-lt v5, v6, :cond_38

    const/16 v6, 0x39

    if-gt v5, v6, :cond_38

    if-eqz v1, :cond_38

    if-nez v2, :cond_38

    .line 744
    add-int/lit8 v6, v5, -0x30

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, "groupValue":Ljava/lang/String;
    if-eqz v6, :cond_36

    .line 746
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    :cond_36
    const/4 v1, 0x0

    .line 749
    .end local v6    # "groupValue":Ljava/lang/String;
    goto :goto_68

    :cond_38
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_41

    if-eqz v1, :cond_41

    .line 750
    const/4 v2, 0x1

    .line 751
    move v3, v4

    goto :goto_68

    .line 752
    :cond_41
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_5b

    if-eqz v1, :cond_5b

    if-eqz v2, :cond_5b

    .line 753
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 754
    .restart local v6    # "groupValue":Ljava/lang/String;
    if-eqz v6, :cond_58

    .line 755
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    :cond_58
    const/4 v1, 0x0

    .line 758
    const/4 v2, 0x0

    .line 759
    .end local v6    # "groupValue":Ljava/lang/String;
    goto :goto_68

    :cond_5b
    if-eq v5, v6, :cond_62

    if-eqz v1, :cond_62

    if-eqz v2, :cond_62

    .line 760
    goto :goto_68

    .line 762
    :cond_62
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 763
    const/4 v1, 0x0

    .line 764
    const/4 v0, 0x0

    .line 765
    const/4 v2, 0x0

    .line 737
    .end local v5    # "c":C
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 769
    .end local v4    # "i":I
    :cond_6b
    if-nez v0, :cond_82

    .line 773
    if-nez v1, :cond_7a

    .line 777
    if-nez v2, :cond_72

    .line 780
    return-void

    .line 778
    :cond_72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Missing ending brace \'}\' from replacement string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 774
    :cond_7a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal group reference: group index is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 770
    :cond_82
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "character to be escaped is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private greylist-max-o ensureMatch()V
    .registers 3

    .line 1188
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_5

    .line 1191
    return-void

    .line 1189
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getMatchedGroupIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1194
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1195
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v0

    .line 1196
    .local v0, "result":I
    if-ltz v0, :cond_c

    .line 1200
    return v0

    .line 1197
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No capturing group in the pattern with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 621
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 622
    return-object p0

    .line 623
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 625
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 626
    .local v4, "c":C
    if-eq v4, v0, :cond_26

    if-ne v4, v2, :cond_29

    .line 627
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    :cond_29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 631
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1152
    if-eqz p1, :cond_2f

    .line 1156
    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_29

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_29

    if-gt p2, p3, :cond_29

    .line 1160
    iput-object p1, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    .line 1161
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    .line 1162
    iput p2, p0, Ljava/util/regex/Matcher;->from:I

    .line 1163
    iput p3, p0, Ljava/util/regex/Matcher;->to:I

    .line 1164
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 1167
    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 1169
    return-object p0

    .line 1157
    :cond_29
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1153
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resetForInput()V
    .registers 5

    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->from:I

    iget v3, p0, Ljava/util/regex/Matcher;->to:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/icu/util/regex/MatcherNative;->setInput(Ljava/lang/String;II)V

    .line 1175
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->useAnchoringBounds(Z)V

    .line 1176
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->useTransparentBounds(Z)V

    .line 1177
    monitor-exit p0

    .line 1178
    return-void

    .line 1177
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 716
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 720
    return-object p0
.end method

.method public whitelist core-platform-api test-api appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 797
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->to:I

    if-ge v0, v1, :cond_f

    .line 798
    iget-object v2, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    :cond_f
    return-object p1
.end method

.method public whitelist core-platform-api test-api end()I
    .registers 2

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api end(I)I
    .registers 5
    .param p1, "group"    # I

    .line 366
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 367
    if-ltz p1, :cond_14

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_14

    .line 369
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0

    .line 368
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api end(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api find()Z
    .registers 3

    .line 548
    monitor-enter p0

    .line 549
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->findNext([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 550
    monitor-exit p0

    .line 551
    return v0

    .line 550
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist core-platform-api test-api find(I)Z
    .registers 5
    .param p1, "start"    # I

    .line 574
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->getTextLength()I

    move-result v0

    .line 575
    .local v0, "limit":I
    if-ltz p1, :cond_1b

    if-gt p1, v0, :cond_1b

    .line 577
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 578
    monitor-enter p0

    .line 579
    :try_start_c
    iget-object v1, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v2, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v1, p1, v2}, Lcom/android/icu/util/regex/MatcherNative;->find(I[I)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 580
    monitor-exit p0

    .line 581
    return v1

    .line 580
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v1

    .line 576
    :cond_1b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Illegal start index"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getSubSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1132
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTextLength()I
    .registers 2

    .line 1121
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api group()Ljava/lang/String;
    .registers 2

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api group(I)Ljava/lang/String;
    .registers 5
    .param p1, "group"    # I

    .line 456
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 457
    if-ltz p1, :cond_32

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_32

    .line 459
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    if-ne v1, v2, :cond_1d

    goto :goto_30

    .line 461
    :cond_1d
    mul-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/util/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 460
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api group(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 492
    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v0

    .line 493
    .local v0, "group":I
    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v1, v2

    if-ne v2, v3, :cond_16

    goto :goto_29

    .line 495
    :cond_16
    mul-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/util/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 494
    :cond_29
    :goto_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist core-platform-api test-api groupCount()I
    .registers 2

    .line 511
    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->groupCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 513
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist core-platform-api test-api hasAnchoringBounds()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public whitelist core-platform-api test-api hasTransparentBounds()Z
    .registers 2

    .line 970
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public whitelist core-platform-api test-api hitEnd()Z
    .registers 2

    .line 1090
    monitor-enter p0

    .line 1091
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->hitEnd()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1092
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist core-platform-api test-api lookingAt()Z
    .registers 3

    .line 599
    monitor-enter p0

    .line 600
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->lookingAt([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 601
    monitor-exit p0

    .line 602
    return v0

    .line 601
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist core-platform-api test-api matches()Z
    .registers 3

    .line 526
    monitor-enter p0

    .line 527
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->matches([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 528
    monitor-exit p0

    .line 529
    return v0

    .line 528
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public whitelist core-platform-api test-api pattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 176
    iget-object v0, p0, Ljava/util/regex/Matcher;->parentPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public whitelist core-platform-api test-api region(II)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 923
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api regionEnd()I
    .registers 2

    .line 949
    iget v0, p0, Ljava/util/regex/Matcher;->to:I

    return v0
.end method

.method public whitelist core-platform-api test-api regionStart()I
    .registers 2

    .line 936
    iget v0, p0, Ljava/util/regex/Matcher;->from:I

    return v0
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "replacement"    # Ljava/lang/String;

    .line 838
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 839
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 840
    .local v0, "result":Z
    if-eqz v0, :cond_1f

    .line 841
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 843
    .local v1, "sb":Ljava/lang/StringBuffer;
    :cond_e
    invoke-virtual {p0, v1, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 844
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 845
    if-nez v0, :cond_e

    .line 846
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 847
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 849
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_1f
    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "replacement"    # Ljava/lang/String;

    .line 886
    if-eqz p1, :cond_22

    .line 888
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 889
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_12

    .line 890
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 891
    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 892
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 893
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 887
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "replacement"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api requireEnd()Z
    .registers 2

    .line 1110
    monitor-enter p0

    .line 1111
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->requireEnd()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1112
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist core-platform-api test-api reset()Ljava/util/regex/Matcher;
    .registers 4

    .line 238
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 256
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api start()I
    .registers 2

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api start(I)I
    .registers 5
    .param p1, "group"    # I

    .line 297
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 298
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 300
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0

    .line 299
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api start(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api toMatchResult()Ljava/util/regex/MatchResult;
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 189
    new-instance v0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;

    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "java.util.regex.Matcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pattern="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v1, " region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v1, " lastmatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 1072
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_5c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "b"    # Z

    .line 1049
    monitor-enter p0

    .line 1050
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 1051
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->useAnchoringBounds(Z)V

    .line 1052
    monitor-exit p0

    .line 1053
    return-object p0

    .line 1052
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public whitelist core-platform-api test-api usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "newPattern"    # Ljava/util/regex/Pattern;

    .line 209
    if-eqz p1, :cond_28

    .line 212
    monitor-enter p0

    .line 214
    :try_start_3
    iget-object v0, p1, Ljava/util/regex/Pattern;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    invoke-static {v0}, Lcom/android/icu/util/regex/MatcherNative;->create(Lcom/android/icu/util/regex/PatternNative;)Lcom/android/icu/util/regex/MatcherNative;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    .line 215
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_25

    .line 216
    iput-object p1, p0, Ljava/util/regex/Matcher;->parentPattern:Ljava/util/regex/Pattern;

    .line 218
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 219
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 222
    :cond_15
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 224
    return-object p0

    .line 215
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    .line 210
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "b"    # Z

    .line 1000
    monitor-enter p0

    .line 1001
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 1002
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->useTransparentBounds(Z)V

    .line 1003
    monitor-exit p0

    .line 1004
    return-object p0

    .line 1003
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
