.class public final synthetic Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;->INSTANCE:Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->lambda$tryAdvance$0(Ljava/lang/Object;)V

    return-void
.end method
