.class final Ljava/text/AttributedString$AttributedStringIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedStringIterator"
.end annotation


# instance fields
.field private greylist-max-o beginIndex:I

.field private greylist-max-o currentIndex:I

.field private greylist-max-o currentRunIndex:I

.field private greylist-max-o currentRunLimit:I

.field private greylist-max-o currentRunStart:I

.field private greylist-max-o endIndex:I

.field private greylist-max-o relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic blacklist this$0:Ljava/text/AttributedString;


# direct methods
.method constructor blacklist <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .registers 6
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .line 765
    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    if-ltz p3, :cond_23

    if-gt p3, p4, :cond_23

    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    move-result p1

    if-gt p4, p1, :cond_23

    .line 771
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 772
    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 773
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 774
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 775
    if-eqz p2, :cond_22

    .line 776
    invoke-virtual {p2}, [Ljava/text/AttributedCharacterIterator$Attribute;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    .line 778
    :cond_22
    return-void

    .line 768
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid substring range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getString()Ljava/text/AttributedString;
    .registers 2

    .line 1003
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    return-object v0
.end method

.method private greylist-max-o internalSetIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 1009
    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 1010
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    if-lt p1, v0, :cond_d

    .line 1011
    :cond_a
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 1013
    :cond_d
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_17

    .line 1014
    const v0, 0xffff

    return v0

    .line 1016
    :cond_17
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    # invokes: Ljava/text/AttributedString;->charAt(I)C
    invoke-static {v0, p1}, Ljava/text/AttributedString;->access$000(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method private greylist-max-o updateRunInfo()V
    .registers 5

    .line 1022
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_e

    .line 1023
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1024
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    goto :goto_62

    .line 1026
    :cond_e
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v0

    .line 1027
    const/4 v1, -0x1

    .line 1028
    .local v1, "runIndex":I
    :goto_12
    :try_start_12
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-gt v2, v3, :cond_29

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1030
    :cond_29
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1031
    if-ltz v1, :cond_3e

    .line 1032
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v1

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1033
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v2, v3, :cond_42

    .line 1034
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    goto :goto_42

    .line 1037
    :cond_3e
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1039
    :cond_42
    :goto_42
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5d

    .line 1040
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1041
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v2, v3, :cond_61

    .line 1042
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    goto :goto_61

    .line 1045
    :cond_5d
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1047
    .end local v1    # "runIndex":I
    :cond_61
    :goto_61
    monitor-exit v0

    .line 1049
    :goto_62
    return-void

    .line 1047
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_12 .. :try_end_65} :catchall_63

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 805
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 806
    .local v0, "other":Ljava/text/AttributedString$AttributedStringIterator;
    return-object v0

    .line 808
    .end local v0    # "other":Ljava/text/AttributedString$AttributedStringIterator;
    :catch_7
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api current()C
    .registers 3

    .line 828
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_a

    .line 829
    const v0, 0xffff

    return v0

    .line 831
    :cond_a
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    # invokes: Ljava/text/AttributedString;->charAt(I)C
    invoke-static {v1, v0}, Ljava/text/AttributedString;->access$000(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 783
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 784
    return v0

    .line 786
    :cond_4
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 787
    return v2

    .line 790
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/text/AttributedString$AttributedStringIterator;

    .line 792
    .local v1, "that":Ljava/text/AttributedString$AttributedStringIterator;
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {v1}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    move-result-object v4

    if-eq v3, v4, :cond_16

    .line 793
    return v2

    .line 794
    :cond_16
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v3, v4, :cond_29

    goto :goto_2a

    .line 796
    :cond_29
    return v0

    .line 795
    :cond_2a
    :goto_2a
    return v2
.end method

.method public whitelist core-platform-api test-api first()C
    .registers 2

    .line 816
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getAllAttributeKeys()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 969
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 971
    :cond_c
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v0

    .line 974
    :try_start_f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 975
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v2, 0x0

    .line 976
    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    if-ge v2, v3, :cond_57

    .line 977
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v3, v2

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v3, v4, :cond_54

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_39

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v3, v4, :cond_54

    .line 978
    :cond_39
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v3, v2

    .line 979
    .local v3, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-eqz v3, :cond_54

    .line 980
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 981
    .local v4, "j":I
    :goto_45
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "j":I
    .local v5, "j":I
    if-lez v4, :cond_54

    .line 982
    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_45

    .line 986
    .end local v3    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v5    # "j":I
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 988
    :cond_57
    monitor-exit v0

    return-object v1

    .line 989
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "i":I
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_f .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public whitelist core-platform-api test-api getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .registers 6
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 993
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 994
    .local v0, "runIndex":I
    if-gez v0, :cond_6

    .line 995
    const/4 v1, 0x0

    return-object v1

    .line 997
    :cond_6
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    # invokes: Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    invoke-static {v1, p1, v0, v2, v3}, Ljava/text/AttributedString;->access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getAttributes()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-eqz v0, :cond_22

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    goto :goto_22

    .line 961
    :cond_16
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    return-object v0

    .line 959
    :cond_22
    :goto_22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getBeginIndex()I
    .registers 2

    .line 860
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    return v0
.end method

.method public whitelist core-platform-api test-api getEndIndex()I
    .registers 2

    .line 864
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    return v0
.end method

.method public whitelist core-platform-api test-api getIndex()I
    .registers 2

    .line 868
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunLimit()I
    .registers 2

    .line 915
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 919
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_44

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_44

    .line 922
    :cond_c
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    .local v0, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 924
    .local v1, "runLimit":I
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 925
    .local v2, "runIndex":I
    :goto_14
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v3, :cond_3d

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v2, 0x1

    .line 926
    # invokes: Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v3}, Ljava/text/AttributedString;->access$200(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 927
    add-int/lit8 v2, v2, 0x1

    .line 928
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_39

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    goto :goto_3b

    :cond_39
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    :goto_3b
    move v1, v3

    goto :goto_14

    .line 930
    :cond_3d
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_43

    .line 931
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 933
    :cond_43
    return v1

    .line 920
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "runLimit":I
    .end local v2    # "runIndex":I
    :cond_44
    :goto_44
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunLimit(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 938
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_3e

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_3e

    .line 941
    :cond_c
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 942
    .local v0, "runLimit":I
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 943
    .local v1, "runIndex":I
    :goto_10
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v1, 0x1

    .line 944
    # invokes: Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 945
    add-int/lit8 v1, v1, 0x1

    .line 946
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    goto :goto_35

    :cond_33
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    :goto_35
    move v0, v2

    goto :goto_10

    .line 948
    :cond_37
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v0, v2, :cond_3d

    .line 949
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 951
    :cond_3d
    return v0

    .line 939
    .end local v0    # "runLimit":I
    .end local v1    # "runIndex":I
    :cond_3e
    :goto_3e
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunStart()I
    .registers 2

    .line 874
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 878
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_36

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_36

    .line 881
    :cond_c
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 882
    .local v0, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 883
    .local v1, "runStart":I
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 884
    .local v2, "runIndex":I
    :goto_14
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v3, :cond_2f

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v2, -0x1

    .line 885
    # invokes: Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v3}, Ljava/text/AttributedString;->access$200(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 886
    add-int/lit8 v2, v2, -0x1

    .line 887
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v3, v2

    goto :goto_14

    .line 889
    :cond_2f
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_35

    .line 890
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 892
    :cond_35
    return v1

    .line 879
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "runStart":I
    .end local v2    # "runIndex":I
    :cond_36
    :goto_36
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRunStart(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 897
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_30

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_30

    .line 900
    :cond_c
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 901
    .local v0, "runStart":I
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 902
    .local v1, "runIndex":I
    :goto_10
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v2, :cond_29

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v1, -0x1

    .line 903
    # invokes: Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 904
    add-int/lit8 v1, v1, -0x1

    .line 905
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v0, v2, v1

    goto :goto_10

    .line 907
    :cond_29
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v0, v2, :cond_2f

    .line 908
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 910
    :cond_2f
    return v0

    .line 898
    .end local v0    # "runStart":I
    .end local v1    # "runIndex":I
    :cond_30
    :goto_30
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 800
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api last()C
    .registers 3

    .line 820
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v0, v1, :cond_b

    .line 821
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 823
    :cond_b
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api next()C
    .registers 3

    .line 836
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v1, :cond_d

    .line 837
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 840
    :cond_d
    const v0, 0xffff

    return v0
.end method

.method public whitelist core-platform-api test-api previous()C
    .registers 3

    .line 845
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v1, :cond_d

    .line 846
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 849
    :cond_d
    const v0, 0xffff

    return v0
.end method

.method public whitelist core-platform-api test-api setIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 854
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-gt p1, v0, :cond_d

    .line 856
    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 855
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
