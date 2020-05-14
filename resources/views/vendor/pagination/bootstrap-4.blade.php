@if ($paginator->hasPages())
    <div class="pg-btn-group-div">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <a class="disabled-a"><</a>
        @else
            <a href="{{ $paginator->previousPageUrl() }}"><</a>
        @endif
        <div class="blank"></div>
        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="page-item disabled" aria-disabled="true"><span class="page-link">{{ $element }}</span></li>
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <a class="disabled-a selected-a">{{ $page }}</a>
                    @else
                        <a href="{{ $url }}">{{ $page }}</a>
                    @endif
                @endforeach
            @endif
        @endforeach
        <div class="blank"></div>

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}">></a>
        @else
            <a class="disabled-a">></a>
        @endif
    </div>
@endif