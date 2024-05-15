.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final whitelist core-platform-api test-api NULLORDER:I = -0x1


# instance fields
.field private greylist-max-o icuIterator:Landroid/icu/text/CollationElementIterator;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/CollationElementIterator;)V
    .registers 2
    .param p1, "iterator"    # Landroid/icu/text/CollationElementIterator;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    .line 121
    return-void
.end method

.method public static final whitelist core-platform-api test-api primaryOrder(I)I
    .registers 2
    .param p0, "order"    # I

    .line 186
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final whitelist core-platform-api test-api secondaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 196
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final whitelist core-platform-api test-api tertiaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 206
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getMaxExpansion(I)I
    .registers 3
    .param p1, "order"    # I

    .line 263
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getOffset()I
    .registers 2

    .line 248
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api next()I
    .registers 2

    .line 152
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api previous()I
    .registers 2

    .line 175
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 2

    .line 130
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    .line 131
    return-void
.end method

.method public whitelist core-platform-api test-api setOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 228
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 229
    return-void
.end method

.method public whitelist core-platform-api test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public whitelist core-platform-api test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 287
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 288
    return-void
.end method
