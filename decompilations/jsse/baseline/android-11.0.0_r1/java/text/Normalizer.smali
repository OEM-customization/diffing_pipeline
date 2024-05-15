.class public final Ljava/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Normalizer$Form;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist core-platform-api test-api isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .registers 5
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .line 185
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;
    invoke-static {p1}, Ljava/text/Normalizer$Form;->access$000(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .line 167
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;
    invoke-static {p1}, Ljava/text/Normalizer$Form;->access$000(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
