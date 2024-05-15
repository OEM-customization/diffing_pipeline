.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, [D

    check-cast p2, [D

    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->lambda$sum$3([D[D)V

    return-void
.end method
