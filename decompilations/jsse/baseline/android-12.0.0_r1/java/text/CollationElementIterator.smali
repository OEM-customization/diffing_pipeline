.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final whitelist test-api NULLORDER:I = -0x1


# instance fields
.field private greylist-max-o icuIterator:Landroid/icu/text/CollationElementIterator;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/CollationElementIterator;)V
    .registers 2
    .param p1, "iterator"    # Landroid/icu/text/CollationElementIterator;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    .line 120
    return-void
.end method

.method public static final whitelist test-api primaryOrder(I)I
    .registers 2
    .param p0, "order"    # I

    .line 185
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api secondaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 195
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final whitelist test-api tertiaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 205
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public whitelist test-api getMaxExpansion(I)I
    .registers 3
    .param p1, "order"    # I

    .line 262
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()I
    .registers 2

    .line 247
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 151
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 174
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 129
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    .line 130
    return-void
.end method

.method public whitelist test-api setOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 227
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 228
    return-void
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 286
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 287
    return-void
.end method
