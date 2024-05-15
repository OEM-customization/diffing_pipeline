.class Ljava/util/regex/Pattern$1MatcherIterator;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist current:I

.field private blacklist emptyElementCount:I

.field private final blacklist matcher:Ljava/util/regex/Matcher;

.field private blacklist nextElement:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/regex/Pattern;

.field final synthetic blacklist val$input:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1486
    iput-object p1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->this$0:Ljava/util/regex/Pattern;

    iput-object p2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iput-object p2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    .line 1488
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 6

    .line 1505
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_76

    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-lez v0, :cond_a

    goto :goto_76

    .line 1508
    :cond_a
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_16

    .line 1509
    return v3

    .line 1513
    :cond_16
    :goto_16
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1514
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v4, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-interface {v0, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 1515
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    .line 1516
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1517
    return v1

    .line 1518
    :cond_43
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    if-lez v0, :cond_16

    .line 1520
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    goto :goto_16

    .line 1525
    :cond_4d
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v0, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 1526
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    .line 1527
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1528
    return v1

    .line 1531
    :cond_70
    iput v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 1532
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 1533
    return v3

    .line 1506
    :cond_76
    :goto_76
    return v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1476
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 3

    .line 1491
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1494
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-nez v0, :cond_10

    .line 1495
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 1496
    .local v0, "n":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 1497
    return-object v0

    .line 1499
    .end local v0    # "n":Ljava/lang/String;
    :cond_10
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 1500
    const-string v0, ""

    return-object v0

    .line 1492
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
