#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkImageFormatListCreateInfoKHR
       (VkImageFormatListCreateInfoKHR(..)) where
import           Foreign.Storable                               (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkFormat            (VkFormat)
import           Graphics.Vulkan.Types.Enum.VkStructureType     (VkStructureType)
import           Graphics.Vulkan.Types.Struct.VkImageCreateInfo (VkImageCreateInfo)
import           Graphics.Vulkan.Types.StructMembers
import           System.IO.Unsafe                               (unsafeDupablePerformIO)

-- | > typedef struct VkImageFormatListCreateInfoKHR {
--   >     VkStructureType sType;
--   >     const void*            pNext;
--   >     uint32_t               viewFormatCount;
--   >     const VkFormat*      pViewFormats;
--   > } VkImageFormatListCreateInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkImageFormatListCreateInfoKHR.html VkImageFormatListCreateInfoKHR registry at www.khronos.org>
data VkImageFormatListCreateInfoKHR = VkImageFormatListCreateInfoKHR## Addr##
                                                                      ByteArray##

instance Eq VkImageFormatListCreateInfoKHR where
        (VkImageFormatListCreateInfoKHR## a _) ==
          x@(VkImageFormatListCreateInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkImageFormatListCreateInfoKHR where
        (VkImageFormatListCreateInfoKHR## a _) `compare`
          x@(VkImageFormatListCreateInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkImageFormatListCreateInfoKHR where
        sizeOf ~_ = #{size VkImageFormatListCreateInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkImageFormatListCreateInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkImageFormatListCreateInfoKHR where
        unsafeAddr (VkImageFormatListCreateInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkImageFormatListCreateInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkImageFormatListCreateInfoKHR##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkImageFormatListCreateInfoKHR where
        type StructFields VkImageFormatListCreateInfoKHR =
             '["sType", "pNext", "viewFormatCount", "pViewFormats"] -- ' closing tick for hsc2hs
        type CUnionType VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkImageFormatListCreateInfoKHR =
             '[VkImageCreateInfo] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-}
         HasVkSType VkImageFormatListCreateInfoKHR where
        type VkSTypeMType VkImageFormatListCreateInfoKHR = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageFormatListCreateInfoKHR, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkImageFormatListCreateInfoKHR, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkImageFormatListCreateInfoKHR, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkImageFormatListCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "sType" VkImageFormatListCreateInfoKHR where
        type FieldType "sType" VkImageFormatListCreateInfoKHR =
             VkStructureType
        type FieldOptional "sType" VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkImageFormatListCreateInfoKHR =
             #{offset VkImageFormatListCreateInfoKHR, sType}
        type FieldIsArray "sType" VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkImageFormatListCreateInfoKHR, sType}

instance CanReadField "sType" VkImageFormatListCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkImageFormatListCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-}
         HasVkPNext VkImageFormatListCreateInfoKHR where
        type VkPNextMType VkImageFormatListCreateInfoKHR = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageFormatListCreateInfoKHR, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkImageFormatListCreateInfoKHR, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkImageFormatListCreateInfoKHR, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkImageFormatListCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkImageFormatListCreateInfoKHR where
        type FieldType "pNext" VkImageFormatListCreateInfoKHR = Ptr Void
        type FieldOptional "pNext" VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkImageFormatListCreateInfoKHR =
             #{offset VkImageFormatListCreateInfoKHR, pNext}
        type FieldIsArray "pNext" VkImageFormatListCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkImageFormatListCreateInfoKHR, pNext}

instance CanReadField "pNext" VkImageFormatListCreateInfoKHR where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkImageFormatListCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-}
         HasVkViewFormatCount VkImageFormatListCreateInfoKHR where
        type VkViewFormatCountMType VkImageFormatListCreateInfoKHR = Word32

        {-# NOINLINE vkViewFormatCount #-}
        vkViewFormatCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageFormatListCreateInfoKHR, viewFormatCount})

        {-# INLINE vkViewFormatCountByteOffset #-}
        vkViewFormatCountByteOffset ~_
          = #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}

        {-# INLINE readVkViewFormatCount #-}
        readVkViewFormatCount p
          = peekByteOff p #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}

        {-# INLINE writeVkViewFormatCount #-}
        writeVkViewFormatCount p
          = pokeByteOff p #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}

instance {-# OVERLAPPING #-}
         HasField "viewFormatCount" VkImageFormatListCreateInfoKHR where
        type FieldType "viewFormatCount" VkImageFormatListCreateInfoKHR =
             Word32
        type FieldOptional "viewFormatCount" VkImageFormatListCreateInfoKHR
             = 'True -- ' closing tick for hsc2hs
        type FieldOffset "viewFormatCount" VkImageFormatListCreateInfoKHR =
             #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}
        type FieldIsArray "viewFormatCount" VkImageFormatListCreateInfoKHR
             = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkImageFormatListCreateInfoKHR, viewFormatCount}

instance CanReadField "viewFormatCount"
           VkImageFormatListCreateInfoKHR
         where
        {-# INLINE getField #-}
        getField = vkViewFormatCount

        {-# INLINE readField #-}
        readField = readVkViewFormatCount

instance CanWriteField "viewFormatCount"
           VkImageFormatListCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkViewFormatCount

instance {-# OVERLAPPING #-}
         HasVkPViewFormats VkImageFormatListCreateInfoKHR where
        type VkPViewFormatsMType VkImageFormatListCreateInfoKHR =
             Ptr VkFormat

        {-# NOINLINE vkPViewFormats #-}
        vkPViewFormats x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageFormatListCreateInfoKHR, pViewFormats})

        {-# INLINE vkPViewFormatsByteOffset #-}
        vkPViewFormatsByteOffset ~_
          = #{offset VkImageFormatListCreateInfoKHR, pViewFormats}

        {-# INLINE readVkPViewFormats #-}
        readVkPViewFormats p
          = peekByteOff p #{offset VkImageFormatListCreateInfoKHR, pViewFormats}

        {-# INLINE writeVkPViewFormats #-}
        writeVkPViewFormats p
          = pokeByteOff p #{offset VkImageFormatListCreateInfoKHR, pViewFormats}

instance {-# OVERLAPPING #-}
         HasField "pViewFormats" VkImageFormatListCreateInfoKHR where
        type FieldType "pViewFormats" VkImageFormatListCreateInfoKHR =
             Ptr VkFormat
        type FieldOptional "pViewFormats" VkImageFormatListCreateInfoKHR =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "pViewFormats" VkImageFormatListCreateInfoKHR =
             #{offset VkImageFormatListCreateInfoKHR, pViewFormats}
        type FieldIsArray "pViewFormats" VkImageFormatListCreateInfoKHR =
             'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkImageFormatListCreateInfoKHR, pViewFormats}

instance CanReadField "pViewFormats" VkImageFormatListCreateInfoKHR
         where
        {-# INLINE getField #-}
        getField = vkPViewFormats

        {-# INLINE readField #-}
        readField = readVkPViewFormats

instance CanWriteField "pViewFormats"
           VkImageFormatListCreateInfoKHR
         where
        {-# INLINE writeField #-}
        writeField = writeVkPViewFormats

instance Show VkImageFormatListCreateInfoKHR where
        showsPrec d x
          = showString "VkImageFormatListCreateInfoKHR {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkViewFormatCount = " .
                            showsPrec d (vkViewFormatCount x) .
                              showString ", " .
                                showString "vkPViewFormats = " .
                                  showsPrec d (vkPViewFormats x) . showChar '}'