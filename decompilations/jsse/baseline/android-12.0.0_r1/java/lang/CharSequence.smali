.class public interface abstract Ljava/lang/CharSequence;
.super Ljava/lang/Object;
.source "CharSequence.java"


# direct methods
.method public static synthetic blacklist lambda$chars$0(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;
    .registers 5
    .param p0, "_this"    # Ljava/lang/CharSequence;

    .line 155
    new-instance v0, Ljava/lang/CharSequence$1CharIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CharIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 157
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-long v1, v1

    .line 155
    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist lambda$codePoints$1(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .param p0, "_this"    # Ljava/lang/CharSequence;

    .line 228
    new-instance v0, Ljava/lang/CharSequence$1CodePointIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CodePointIterator;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api charAt(I)C
.end method

.method public whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/CharSequence$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api length()I
.end method

.method public abstract whitelist test-api subSequence(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
