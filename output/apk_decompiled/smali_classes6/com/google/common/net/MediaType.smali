.class public final Lcom/google/common/net/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/MediaType$Tokenizer;
    }
.end annotation


# static fields
.field public static final AAC_AUDIO:Lcom/google/common/net/MediaType;

.field public static final ANY_APPLICATION_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_AUDIO_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_IMAGE_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_TEXT_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_VIDEO_TYPE:Lcom/google/common/net/MediaType;

.field public static final APPLE_MOBILE_CONFIG:Lcom/google/common/net/MediaType;

.field public static final APPLE_PASSBOOK:Lcom/google/common/net/MediaType;

.field public static final APPLICATION_BINARY:Lcom/google/common/net/MediaType;

.field private static final APPLICATION_TYPE:Ljava/lang/String; = "application"

.field public static final APPLICATION_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ATOM_UTF_8:Lcom/google/common/net/MediaType;

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field public static final BASIC_AUDIO:Lcom/google/common/net/MediaType;

.field public static final BMP:Lcom/google/common/net/MediaType;

.field public static final BZIP2:Lcom/google/common/net/MediaType;

.field public static final CACHE_MANIFEST_UTF_8:Lcom/google/common/net/MediaType;

.field private static final CHARSET_ATTRIBUTE:Ljava/lang/String; = "charset"

.field public static final CRW:Lcom/google/common/net/MediaType;

.field public static final CSS_UTF_8:Lcom/google/common/net/MediaType;

.field public static final CSV_UTF_8:Lcom/google/common/net/MediaType;

.field public static final DART_UTF_8:Lcom/google/common/net/MediaType;

.field public static final EOT:Lcom/google/common/net/MediaType;

.field public static final EPUB:Lcom/google/common/net/MediaType;

.field public static final FLV_VIDEO:Lcom/google/common/net/MediaType;

.field public static final FORM_DATA:Lcom/google/common/net/MediaType;

.field public static final GIF:Lcom/google/common/net/MediaType;

.field public static final GZIP:Lcom/google/common/net/MediaType;

.field public static final HTML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ICO:Lcom/google/common/net/MediaType;

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field public static final I_CALENDAR_UTF_8:Lcom/google/common/net/MediaType;

.field public static final JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final JPEG:Lcom/google/common/net/MediaType;

.field public static final JSON_UTF_8:Lcom/google/common/net/MediaType;

.field public static final KEY_ARCHIVE:Lcom/google/common/net/MediaType;

.field public static final KML:Lcom/google/common/net/MediaType;

.field public static final KMZ:Lcom/google/common/net/MediaType;

.field private static final KNOWN_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/net/MediaType;",
            "Lcom/google/common/net/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final L24_AUDIO:Lcom/google/common/net/MediaType;

.field private static final LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

.field public static final MANIFEST_JSON_UTF_8:Lcom/google/common/net/MediaType;

.field public static final MBOX:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_EXCEL:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_POWERPOINT:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_WORD:Lcom/google/common/net/MediaType;

.field public static final MP4_AUDIO:Lcom/google/common/net/MediaType;

.field public static final MP4_VIDEO:Lcom/google/common/net/MediaType;

.field public static final MPEG_AUDIO:Lcom/google/common/net/MediaType;

.field public static final MPEG_VIDEO:Lcom/google/common/net/MediaType;

.field public static final NACL_APPLICATION:Lcom/google/common/net/MediaType;

.field public static final NACL_PORTABLE_APPLICATION:Lcom/google/common/net/MediaType;

.field public static final OCTET_STREAM:Lcom/google/common/net/MediaType;

.field public static final OGG_AUDIO:Lcom/google/common/net/MediaType;

.field public static final OGG_CONTAINER:Lcom/google/common/net/MediaType;

.field public static final OGG_VIDEO:Lcom/google/common/net/MediaType;

.field public static final OOXML_DOCUMENT:Lcom/google/common/net/MediaType;

.field public static final OOXML_PRESENTATION:Lcom/google/common/net/MediaType;

.field public static final OOXML_SHEET:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_GRAPHICS:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_PRESENTATION:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_SPREADSHEET:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_TEXT:Lcom/google/common/net/MediaType;

.field private static final PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

.field public static final PDF:Lcom/google/common/net/MediaType;

.field public static final PLAIN_TEXT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final PNG:Lcom/google/common/net/MediaType;

.field public static final POSTSCRIPT:Lcom/google/common/net/MediaType;

.field public static final PROTOBUF:Lcom/google/common/net/MediaType;

.field public static final PSD:Lcom/google/common/net/MediaType;

.field public static final QUICKTIME:Lcom/google/common/net/MediaType;

.field private static final QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final RDF_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final RTF_UTF_8:Lcom/google/common/net/MediaType;

.field public static final SFNT:Lcom/google/common/net/MediaType;

.field public static final SHOCKWAVE_FLASH:Lcom/google/common/net/MediaType;

.field public static final SKETCHUP:Lcom/google/common/net/MediaType;

.field public static final SOAP_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final SVG_UTF_8:Lcom/google/common/net/MediaType;

.field public static final TAR:Lcom/google/common/net/MediaType;

.field public static final TEXT_JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

.field private static final TEXT_TYPE:Ljava/lang/String; = "text"

.field public static final THREE_GPP2_VIDEO:Lcom/google/common/net/MediaType;

.field public static final THREE_GPP_VIDEO:Lcom/google/common/net/MediaType;

.field public static final TIFF:Lcom/google/common/net/MediaType;

.field private static final TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final TSV_UTF_8:Lcom/google/common/net/MediaType;

.field private static final UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VCARD_UTF_8:Lcom/google/common/net/MediaType;

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video"

.field public static final VND_REAL_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VND_WAVE_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VORBIS_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VTT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final WAX_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WEBM_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WEBM_VIDEO:Lcom/google/common/net/MediaType;

.field public static final WEBP:Lcom/google/common/net/MediaType;

.field private static final WILDCARD:Ljava/lang/String; = "*"

.field public static final WMA_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final WMV:Lcom/google/common/net/MediaType;

.field public static final WOFF:Lcom/google/common/net/MediaType;

.field public static final WOFF2:Lcom/google/common/net/MediaType;

.field public static final XHTML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final XRD_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ZIP:Lcom/google/common/net/MediaType;


# instance fields
.field private hashCode:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final parameters:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsedCharset:Lcom/google/common/base/Optional;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private final subtype:Ljava/lang/String;

.field private toString:Ljava/lang/String;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "charset"

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;

    .line 84
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaIsoControl()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x20

    .line 86
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "()<>@,;:\\\"/[]?="

    .line 87
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 89
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "\"\\\r"

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 94
    const-string v0, " \t\r\n"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

    .line 105
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    .line 135
    const-string v0, "*"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_TYPE:Lcom/google/common/net/MediaType;

    .line 136
    const-string v0, "text"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_TEXT_TYPE:Lcom/google/common/net/MediaType;

    .line 137
    const-string v0, "image"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_IMAGE_TYPE:Lcom/google/common/net/MediaType;

    .line 138
    const-string v0, "audio"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_AUDIO_TYPE:Lcom/google/common/net/MediaType;

    .line 139
    const-string v0, "video"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_VIDEO_TYPE:Lcom/google/common/net/MediaType;

    .line 140
    const-string v0, "application"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_APPLICATION_TYPE:Lcom/google/common/net/MediaType;

    .line 143
    const-string v0, "text"

    const-string v1, "cache-manifest"

    .line 144
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CACHE_MANIFEST_UTF_8:Lcom/google/common/net/MediaType;

    .line 145
    const-string v0, "text"

    const-string v1, "css"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CSS_UTF_8:Lcom/google/common/net/MediaType;

    .line 146
    const-string v0, "text"

    const-string v1, "csv"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CSV_UTF_8:Lcom/google/common/net/MediaType;

    .line 147
    const-string v0, "text"

    const-string v1, "html"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->HTML_UTF_8:Lcom/google/common/net/MediaType;

    .line 148
    const-string v0, "text"

    const-string v1, "calendar"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->I_CALENDAR_UTF_8:Lcom/google/common/net/MediaType;

    .line 149
    const-string v0, "text"

    const-string v1, "plain"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PLAIN_TEXT_UTF_8:Lcom/google/common/net/MediaType;

    .line 155
    const-string v0, "text"

    const-string v1, "javascript"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TEXT_JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

    .line 162
    const-string v0, "text"

    const-string v1, "tab-separated-values"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TSV_UTF_8:Lcom/google/common/net/MediaType;

    .line 164
    const-string v0, "text"

    const-string v1, "vcard"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VCARD_UTF_8:Lcom/google/common/net/MediaType;

    .line 165
    const-string v0, "text"

    const-string v1, "vnd.wap.wml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WML_UTF_8:Lcom/google/common/net/MediaType;

    .line 171
    const-string v0, "text"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 178
    const-string v0, "text"

    const-string v1, "vtt"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VTT_UTF_8:Lcom/google/common/net/MediaType;

    .line 181
    const-string v0, "image"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BMP:Lcom/google/common/net/MediaType;

    .line 191
    const-string v0, "image"

    const-string v1, "x-canon-crw"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CRW:Lcom/google/common/net/MediaType;

    .line 193
    const-string v0, "image"

    const-string v1, "gif"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->GIF:Lcom/google/common/net/MediaType;

    .line 194
    const-string v0, "image"

    const-string v1, "vnd.microsoft.icon"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ICO:Lcom/google/common/net/MediaType;

    .line 195
    const-string v0, "image"

    const-string v1, "jpeg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JPEG:Lcom/google/common/net/MediaType;

    .line 196
    const-string v0, "image"

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PNG:Lcom/google/common/net/MediaType;

    .line 214
    const-string v0, "image"

    const-string v1, "vnd.adobe.photoshop"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PSD:Lcom/google/common/net/MediaType;

    .line 216
    const-string v0, "image"

    const-string v1, "svg+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SVG_UTF_8:Lcom/google/common/net/MediaType;

    .line 217
    const-string v0, "image"

    const-string v1, "tiff"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TIFF:Lcom/google/common/net/MediaType;

    .line 218
    const-string v0, "image"

    const-string v1, "webp"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBP:Lcom/google/common/net/MediaType;

    .line 221
    const-string v0, "audio"

    const-string v1, "mp4"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MP4_AUDIO:Lcom/google/common/net/MediaType;

    .line 222
    const-string v0, "audio"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MPEG_AUDIO:Lcom/google/common/net/MediaType;

    .line 223
    const-string v0, "audio"

    const-string v1, "ogg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_AUDIO:Lcom/google/common/net/MediaType;

    .line 224
    const-string v0, "audio"

    const-string v1, "webm"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBM_AUDIO:Lcom/google/common/net/MediaType;

    .line 232
    const-string v0, "audio"

    const-string v1, "l24"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->L24_AUDIO:Lcom/google/common/net/MediaType;

    .line 240
    const-string v0, "audio"

    const-string v1, "basic"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BASIC_AUDIO:Lcom/google/common/net/MediaType;

    .line 248
    const-string v0, "audio"

    const-string v1, "aac"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->AAC_AUDIO:Lcom/google/common/net/MediaType;

    .line 256
    const-string v0, "audio"

    const-string v1, "vorbis"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VORBIS_AUDIO:Lcom/google/common/net/MediaType;

    .line 265
    const-string v0, "audio"

    const-string v1, "x-ms-wma"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WMA_AUDIO:Lcom/google/common/net/MediaType;

    .line 274
    const-string v0, "audio"

    const-string v1, "x-ms-wax"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WAX_AUDIO:Lcom/google/common/net/MediaType;

    .line 282
    const-string v0, "audio"

    const-string v1, "vnd.rn-realaudio"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VND_REAL_AUDIO:Lcom/google/common/net/MediaType;

    .line 290
    const-string v0, "audio"

    const-string v1, "vnd.wave"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VND_WAVE_AUDIO:Lcom/google/common/net/MediaType;

    .line 293
    const-string v0, "video"

    const-string v1, "mp4"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MP4_VIDEO:Lcom/google/common/net/MediaType;

    .line 294
    const-string v0, "video"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MPEG_VIDEO:Lcom/google/common/net/MediaType;

    .line 295
    const-string v0, "video"

    const-string v1, "ogg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_VIDEO:Lcom/google/common/net/MediaType;

    .line 296
    const-string v0, "video"

    const-string v1, "quicktime"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->QUICKTIME:Lcom/google/common/net/MediaType;

    .line 297
    const-string v0, "video"

    const-string v1, "webm"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBM_VIDEO:Lcom/google/common/net/MediaType;

    .line 298
    const-string v0, "video"

    const-string v1, "x-ms-wmv"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WMV:Lcom/google/common/net/MediaType;

    .line 307
    const-string v0, "video"

    const-string v1, "x-flv"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FLV_VIDEO:Lcom/google/common/net/MediaType;

    .line 316
    const-string v0, "video"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->THREE_GPP_VIDEO:Lcom/google/common/net/MediaType;

    .line 325
    const-string v0, "video"

    const-string v1, "3gpp2"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->THREE_GPP2_VIDEO:Lcom/google/common/net/MediaType;

    .line 333
    const-string v0, "application"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLICATION_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 335
    const-string v0, "application"

    const-string v1, "atom+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ATOM_UTF_8:Lcom/google/common/net/MediaType;

    .line 336
    const-string v0, "application"

    const-string v1, "x-bzip2"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BZIP2:Lcom/google/common/net/MediaType;

    .line 343
    const-string v0, "application"

    const-string v1, "dart"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->DART_UTF_8:Lcom/google/common/net/MediaType;

    .line 350
    const-string v0, "application"

    const-string v1, "vnd.apple.pkpass"

    .line 351
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLE_PASSBOOK:Lcom/google/common/net/MediaType;

    .line 361
    const-string v0, "application"

    const-string v1, "vnd.ms-fontobject"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->EOT:Lcom/google/common/net/MediaType;

    .line 371
    const-string v0, "application"

    const-string v1, "epub+zip"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->EPUB:Lcom/google/common/net/MediaType;

    .line 373
    const-string v0, "application"

    const-string v1, "x-www-form-urlencoded"

    .line 374
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FORM_DATA:Lcom/google/common/net/MediaType;

    .line 382
    const-string v0, "application"

    const-string v1, "pkcs12"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KEY_ARCHIVE:Lcom/google/common/net/MediaType;

    .line 393
    const-string v0, "application"

    const-string v1, "binary"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLICATION_BINARY:Lcom/google/common/net/MediaType;

    .line 395
    const-string v0, "application"

    const-string v1, "x-gzip"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->GZIP:Lcom/google/common/net/MediaType;

    .line 401
    const-string v0, "application"

    const-string v1, "javascript"

    .line 402
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

    .line 404
    const-string v0, "application"

    const-string v1, "json"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JSON_UTF_8:Lcom/google/common/net/MediaType;

    .line 411
    const-string v0, "application"

    const-string v1, "manifest+json"

    .line 412
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MANIFEST_JSON_UTF_8:Lcom/google/common/net/MediaType;

    .line 414
    const-string v0, "application"

    const-string v1, "vnd.google-earth.kml+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KML:Lcom/google/common/net/MediaType;

    .line 415
    const-string v0, "application"

    const-string v1, "vnd.google-earth.kmz"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KMZ:Lcom/google/common/net/MediaType;

    .line 416
    const-string v0, "application"

    const-string v1, "mbox"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MBOX:Lcom/google/common/net/MediaType;

    .line 424
    const-string v0, "application"

    const-string v1, "x-apple-aspen-config"

    .line 425
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLE_MOBILE_CONFIG:Lcom/google/common/net/MediaType;

    .line 427
    const-string v0, "application"

    const-string v1, "vnd.ms-excel"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_EXCEL:Lcom/google/common/net/MediaType;

    .line 428
    const-string v0, "application"

    const-string v1, "vnd.ms-powerpoint"

    .line 429
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_POWERPOINT:Lcom/google/common/net/MediaType;

    .line 430
    const-string v0, "application"

    const-string v1, "msword"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_WORD:Lcom/google/common/net/MediaType;

    .line 439
    const-string v0, "application"

    const-string v1, "x-nacl"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->NACL_APPLICATION:Lcom/google/common/net/MediaType;

    .line 448
    const-string v0, "application"

    const-string v1, "x-pnacl"

    .line 449
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->NACL_PORTABLE_APPLICATION:Lcom/google/common/net/MediaType;

    .line 451
    const-string v0, "application"

    const-string v1, "octet-stream"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OCTET_STREAM:Lcom/google/common/net/MediaType;

    .line 453
    const-string v0, "application"

    const-string v1, "ogg"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_CONTAINER:Lcom/google/common/net/MediaType;

    .line 454
    const-string v0, "application"

    const-string v1, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 455
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_DOCUMENT:Lcom/google/common/net/MediaType;

    .line 457
    const-string v0, "application"

    const-string v1, "vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 458
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_PRESENTATION:Lcom/google/common/net/MediaType;

    .line 460
    const-string v0, "application"

    const-string v1, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 461
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_SHEET:Lcom/google/common/net/MediaType;

    .line 462
    const-string v0, "application"

    const-string v1, "vnd.oasis.opendocument.graphics"

    .line 463
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_GRAPHICS:Lcom/google/common/net/MediaType;

    .line 464
    const-string v0, "application"

    const-string v1, "vnd.oasis.opendocument.presentation"

    .line 465
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_PRESENTATION:Lcom/google/common/net/MediaType;

    .line 466
    const-string v0, "application"

    const-string v1, "vnd.oasis.opendocument.spreadsheet"

    .line 467
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_SPREADSHEET:Lcom/google/common/net/MediaType;

    .line 468
    const-string v0, "application"

    const-string v1, "vnd.oasis.opendocument.text"

    .line 469
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_TEXT:Lcom/google/common/net/MediaType;

    .line 470
    const-string v0, "application"

    const-string v1, "pdf"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PDF:Lcom/google/common/net/MediaType;

    .line 471
    const-string v0, "application"

    const-string v1, "postscript"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->POSTSCRIPT:Lcom/google/common/net/MediaType;

    .line 477
    const-string v0, "application"

    const-string v1, "protobuf"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PROTOBUF:Lcom/google/common/net/MediaType;

    .line 479
    const-string v0, "application"

    const-string v1, "rdf+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->RDF_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 480
    const-string v0, "application"

    const-string v1, "rtf"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->RTF_UTF_8:Lcom/google/common/net/MediaType;

    .line 490
    const-string v0, "application"

    const-string v1, "font-sfnt"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SFNT:Lcom/google/common/net/MediaType;

    .line 492
    const-string v0, "application"

    const-string v1, "x-shockwave-flash"

    .line 493
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SHOCKWAVE_FLASH:Lcom/google/common/net/MediaType;

    .line 494
    const-string v0, "application"

    const-string v1, "vnd.sketchup.skp"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SKETCHUP:Lcom/google/common/net/MediaType;

    .line 506
    const-string v0, "application"

    const-string v1, "soap+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SOAP_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 508
    const-string v0, "application"

    const-string v1, "x-tar"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TAR:Lcom/google/common/net/MediaType;

    .line 517
    const-string v0, "application"

    const-string v1, "font-woff"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WOFF:Lcom/google/common/net/MediaType;

    .line 524
    const-string v0, "application"

    const-string v1, "font-woff2"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WOFF2:Lcom/google/common/net/MediaType;

    .line 526
    const-string v0, "application"

    const-string v1, "xhtml+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XHTML_UTF_8:Lcom/google/common/net/MediaType;

    .line 533
    const-string v0, "application"

    const-string v1, "xrd+xml"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XRD_UTF_8:Lcom/google/common/net/MediaType;

    .line 535
    const-string v0, "application"

    const-string v1, "zip"

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ZIP:Lcom/google/common/net/MediaType;

    .line 913
    const-string v0, "; "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p3, "parameters":Lcom/google/common/collect/ImmutableListMultimap;, "Lcom/google/common/collect/ImmutableListMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 549
    iput-object p2, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 550
    iput-object p3, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 551
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/google/common/net/MediaType;->escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "mediaType"    # Lcom/google/common/net/MediaType;

    .prologue
    .line 121
    sget-object v0, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object p0
.end method

.method private computeToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableListMultimap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    iget-object v2, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    new-instance v3, Lcom/google/common/net/MediaType$2;

    invoke-direct {v3, p0}, Lcom/google/common/net/MediaType$2;-><init>(Lcom/google/common/net/MediaType;)V

    .line 935
    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->transformValues(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Function;)Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    .line 943
    .local v1, "quotedParameters":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/google/common/net/MediaType;->PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 945
    .end local v1    # "quotedParameters":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 717
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;

    move-result-object v0

    .line 718
    .local v0, "mediaType":Lcom/google/common/net/MediaType;
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 719
    return-object v0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/net/MediaType;"
        }
    .end annotation

    .prologue
    .line 769
    .local p2, "parameters":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p0}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 773
    .local v5, "normalizedType":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "normalizedSubtype":Ljava/lang/String;
    const-string v6, "*"

    .line 775
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const-string v7, "A wildcard type cannot be used with a non-wildcard subtype"

    .line 774
    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 777
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v1

    .line 778
    .local v1, "builder":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 779
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "attribute":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_1

    .line 775
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "builder":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 782
    .restart local v1    # "builder":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v3, Lcom/google/common/net/MediaType;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 784
    .local v3, "mediaType":Lcom/google/common/net/MediaType;
    sget-object v6, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/net/MediaType;

    return-object v6
.end method

.method static createApplicationType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .prologue
    .line 728
    const-string v0, "application"

    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createAudioType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .prologue
    .line 737
    const-string v0, "audio"

    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Lcom/google/common/net/MediaType;

    .line 109
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    invoke-static {v1}, Lcom/google/common/net/MediaType;->addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;

    move-result-object v0

    .line 110
    .local v0, "mediaType":Lcom/google/common/net/MediaType;
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 111
    return-object v0
.end method

.method private static createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v1, Lcom/google/common/net/MediaType;

    sget-object v2, Lcom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-direct {v1, p0, p1, v2}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    invoke-static {v1}, Lcom/google/common/net/MediaType;->addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;

    move-result-object v0

    .line 116
    .local v0, "mediaType":Lcom/google/common/net/MediaType;
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 117
    return-object v0
.end method

.method static createImageType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .prologue
    .line 746
    const-string v0, "image"

    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createTextType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .prologue
    .line 755
    const-string v0, "text"

    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createVideoType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .prologue
    .line 764
    const-string v0, "video"

    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    .local v1, "escaped":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 951
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 952
    .local v0, "ch":C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_1

    .line 953
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 950
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string v0, "charset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static normalizeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 788
    sget-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 789
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parametersAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 570
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v1, Lcom/google/common/net/MediaType$1;

    invoke-direct {v1, p0}, Lcom/google/common/net/MediaType$1;-><init>(Lcom/google/common/net/MediaType;)V

    .line 569
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 802
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v4, Lcom/google/common/net/MediaType$Tokenizer;

    invoke-direct {v4, p0}, Lcom/google/common/net/MediaType$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 805
    .local v4, "tokenizer":Lcom/google/common/net/MediaType$Tokenizer;
    :try_start_0
    sget-object v8, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "type":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 807
    sget-object v8, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "subtype":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v2

    .line 809
    .local v2, "parameters":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 810
    sget-object v8, Lcom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 811
    const/16 v8, 0x3b

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 812
    sget-object v8, Lcom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 813
    sget-object v8, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "attribute":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 816
    invoke-virtual {v4}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v8

    if-ne v9, v8, :cond_2

    .line 817
    const/16 v8, 0x22

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 818
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v7, "valueBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v8

    if-eq v9, v8, :cond_1

    .line 820
    invoke-virtual {v4}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v8

    if-ne v10, v8, :cond_0

    .line 821
    const/16 v8, 0x5c

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 822
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(Lcom/google/common/base/CharMatcher;)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 835
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "parameters":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "subtype":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v7    # "valueBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 824
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "attribute":Ljava/lang/String;
    .restart local v2    # "parameters":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "subtype":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v7    # "valueBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 827
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 828
    .local v6, "value":Ljava/lang/String;
    const/16 v8, 0x22

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 832
    .end local v7    # "valueBuilder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v2, v0, v6}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto/16 :goto_0

    .line 830
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_2

    .line 834
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v8

    invoke-static {v5, v3, v8}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public charset()Lcom/google/common/base/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 590
    .local v1, "local":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/nio/charset/Charset;>;"
    if-nez v1, :cond_3

    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "value":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 593
    iget-object v3, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 594
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 595
    move-object v2, v0

    .line 596
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple charset values defined: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 602
    .end local v0    # "currentValue":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 604
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 889
    if-ne p1, p0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v1

    .line 891
    :cond_1
    instance-of v3, p1, Lcom/google/common/net/MediaType;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 892
    check-cast v0, Lcom/google/common/net/MediaType;

    .line 893
    .local v0, "that":Lcom/google/common/net/MediaType;
    iget-object v3, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 894
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 896
    invoke-direct {p0}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/google/common/net/MediaType;
    :cond_3
    move v1, v2

    .line 898
    goto :goto_0
.end method

.method public hasWildcard()Z
    .locals 2

    .prologue
    .line 672
    const-string v0, "*"

    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 905
    iget v0, p0, Lcom/google/common/net/MediaType;->hashCode:I

    .line 906
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 907
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 908
    iput v0, p0, Lcom/google/common/net/MediaType;->hashCode:I

    .line 910
    :cond_0
    return v0
.end method

.method public is(Lcom/google/common/net/MediaType;)Z
    .locals 2
    .param p1, "mediaTypeRange"    # Lcom/google/common/net/MediaType;

    .prologue
    .line 705
    iget-object v0, p1, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    const-string v1, "*"

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 707
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableListMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 705
    :goto_0
    return v0

    .line 707
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parameters()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 923
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/google/common/net/MediaType;->computeToString()Ljava/lang/String;

    move-result-object v0

    .line 925
    iput-object v0, p0, Lcom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 927
    :cond_0
    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lcom/google/common/net/MediaType;
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 663
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "charset"

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/net/MediaType;->withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    .line 666
    .local v0, "withCharset":Lcom/google/common/net/MediaType;
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 667
    return-object v0
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 8
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 633
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-static {p1}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "normalizedAttribute":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 637
    .local v0, "builder":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableListMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 638
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 639
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 640
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 643
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v4, p2}, Lcom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 644
    new-instance v3, Lcom/google/common/net/MediaType;

    iget-object v5, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 646
    .local v3, "mediaType":Lcom/google/common/net/MediaType;
    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 647
    iget-object v5, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    iput-object v5, v3, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 650
    :cond_2
    sget-object v5, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/net/MediaType;

    return-object v5
.end method

.method public withParameters(Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/net/MediaType;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "parameters":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public withoutParameters()Lcom/google/common/net/MediaType;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/google/common/net/MediaType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/net/MediaType;
    :cond_0
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object p0

    goto :goto_0
.end method
