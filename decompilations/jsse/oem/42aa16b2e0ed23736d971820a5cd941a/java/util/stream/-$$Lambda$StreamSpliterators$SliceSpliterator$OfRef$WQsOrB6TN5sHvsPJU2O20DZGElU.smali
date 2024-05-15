.class public final synthetic Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;->INSTANCE:Ljava/util/stream/-$$Lambda$StreamSpliterators$SliceSpliterator$OfRef$WQsOrB6TN5sHvsPJU2O20DZGElU;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->lambda$tryAdvance$0(Ljava/lang/Object;)V

    return-void
.end method
