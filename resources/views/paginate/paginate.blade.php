@extends('../index')

@section('page')
<div class="paginate">
    {{-- Previous Page Link --}}
    {{-- @if(!($movies->onFirstPage()))
    <li class="page-item">
        <a class="page-link" href="{{ $movies->previousPageUrl() }}" rel="prev" aria-label="@lang('pagination.previous')">&lsaquo;</a>
    </li>
    @endif --}}
    
    <div class="page">
        @foreach(range(1, $movies->lastPage()) as $totalPage)
            @if($totalPage >= $movies->currentPage() && $totalPage <= $movies->currentPage() + 4)
                @if ($totalPage == $movies->currentPage())
                    <li class="page-item active" aria-current="page"><span class="page-link">{{ $totalPage }}</span></li>
                    {{-- <a class="page active" aria-current="page" href=""><span class="page-link">{{ $totalPage }}</span></a> --}}
                @else
                    <li class="page-item"><a class="page-link" href="{{ $movies->url($totalPage) }}">{{ $totalPage }}</a></li>
                    {{-- <a  class="page page-item page-link" href="{{ $movies->url($totalPage) }}">{{ $totalPage }}/a> --}}
                @endif
            @endif
        @endforeach
    </div>

   
    
     {{-- Next Page Link --}}
     {{-- @if ($movies->hasMorePages())
     <li class="page-item">
         <a class="page-link" href="{{ $movies->nextPageUrl() }}" rel="next" aria-label="@lang('pagination.next')">&rsaquo;</a>
     </li>
    @endif --}}
</div>
@endsection
